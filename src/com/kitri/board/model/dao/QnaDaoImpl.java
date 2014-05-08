package com.kitri.board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.kitri.board.model.QnaDto;
import com.kitri.board.service.QnaServiceImpl;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;

public class QnaDaoImpl implements QnaDao {
	// /////////////싱글톤패턴(객체를 하나만 생성하게 하는것)//////////////
	private static QnaDaoImpl dao;

	static {
		dao = new QnaDaoImpl();
	}

	private QnaDaoImpl() {
	}

	public static QnaDaoImpl getInstance() {
		return dao;
	}

	// /////////////싱글톤패턴(객체를 하나만 생성하게 하는것)//////////////

	public int writeArticle(QnaDto qnaDto) {
		int seq = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("insert all \n");
			sql.append(" into board(seq, name, id, email, subject, content, hit, logtime, bcode) \n");
			sql.append(" values (?,?,?,?,?,?,0,sysdate,?) \n");
			sql.append(" into qna(rseq, seq, ref, lev, step, pseq, reply) \n");
			sql.append(" values (qna_rseq.nextval, ?, ?, 0, 0, 0, 0) \n");
			sql.append("select * from dual");
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setInt(++idx, qnaDto.getSeq());
			pstmt.setString(++idx, qnaDto.getName());
			pstmt.setString(++idx, qnaDto.getId());
			pstmt.setString(++idx, qnaDto.getEmail());
			pstmt.setString(++idx, qnaDto.getSubject());
			pstmt.setString(++idx, qnaDto.getContent());
			pstmt.setInt(++idx, qnaDto.getBcode());
			pstmt.setInt(++idx, qnaDto.getSeq());
			pstmt.setInt(++idx, qnaDto.getRef());

			pstmt.executeUpdate();

			seq = qnaDto.getSeq();
		} catch (SQLException e) {
			seq = 0;
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}

		return seq;
	}

	@Override
	public List<QnaDto> listArticle(Map<String, String> map) {
		List<QnaDto> list = new ArrayList<QnaDto>();

		QnaDto qnaDto = null;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select a.* \n");
			sql.append("from ( \n");
			sql.append("        select RANK() OVER(ORDER BY r.ref DESC, r.step) rank, \n");
			sql.append("                b.seq, b.name, b.id, b.email, b.subject, b.content, b.hit, b.bcode, \n");
			sql.append("                case when trunc(b.logtime, 'dd')=trunc(sysdate, 'dd') \n");
			sql.append("                       then to_char(b.logtime, 'hh24:mi:ss') \n");
			sql.append("                       else to_char(b.logtime, 'yy.mm.dd') \n");
			sql.append("               end as logtime, \n");
			sql.append("               r.ref, r.lev, r.step, r.pseq, r.reply ");
			sql.append("        from board b, qna r \n");
			sql.append("        where b.seq=r.seq \n");
			sql.append("		and b.bcode=? \n");
			String key = map.get("key");
			String word = map.get("word");
			if(!key.isEmpty() && !word.isEmpty()){
				if(key.equals("subject")){
					sql.append("		and b.subject like '%'||?||'%' \n");
				}else{
					sql.append("		and b."+key+"=? \n");
				}
				
			}
			
			sql.append("     ) a \n");
			sql.append("where a.rank > ? and a.rank <= ? \n");

			pstmt = conn.prepareStatement(sql.toString());

			int idx = 0;
			pstmt.setString(++idx, map.get("bcode"));
			if(!key.isEmpty() && !word.isEmpty()){
				pstmt.setString(++idx, map.get("word"));
			}
			pstmt.setString(++idx, map.get("start"));
			pstmt.setString(++idx, map.get("end"));
		

			rs = pstmt.executeQuery();

			while (rs.next()) {
				qnaDto = new QnaDto();
				qnaDto.setSeq(rs.getInt("seq"));
				qnaDto.setName(rs.getString("name"));
				qnaDto.setId(rs.getString("id"));
				qnaDto.setEmail(rs.getString("email"));
				qnaDto.setBcode(rs.getInt("bcode"));
				qnaDto.setSubject(rs.getString("subject"));
				qnaDto.setContent(rs.getString("content"));
				qnaDto.setHit(rs.getInt("hit"));
				qnaDto.setLogtime(rs.getString("logtime"));
				qnaDto.setRef(rs.getInt("ref"));
				qnaDto.setLev(rs.getInt("lev"));
				qnaDto.setStep(rs.getInt("step"));
				qnaDto.setPseq(rs.getInt("pseq"));
				qnaDto.setReply(rs.getInt("reply"));
				list.add(qnaDto);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}

		return list;
	}

	@Override
	public int getNewArticleCount(int bcode) {
		int newCount = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();

			sql.append("select count(seq) \n");
			sql.append("from board \n");
			sql.append("where bcode = ? \n");
			sql.append("and to_char(logtime,'yyyymmdd') = to_char(sysdate,'yyyymmdd')");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, bcode);
			rs = pstmt.executeQuery();
			rs.next();
			newCount = rs.getInt(1);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}

		return newCount;
	}

	@Override
	public int getTotalArticleCount(Map<String, String> map) {
		int totalCount = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();

			sql.append("select count(seq) \n");
			sql.append("from board \n");
			sql.append("where bcode = ? \n");
			String key = map.get("key");
			String word = map.get("word");
			if(!key.isEmpty() && !word.isEmpty()){
				if(key.equals("subject")){
					sql.append("		and subject like '%'||?||'%' \n");
				}else{
					sql.append("		and "+key+"=? \n");
				}
				
			}
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, map.get("bcode"));
			if(!key.isEmpty() && !word.isEmpty())
				pstmt.setString(2, map.get("word"));
			rs = pstmt.executeQuery();
			rs.next();
			totalCount = rs.getInt(1);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}

		return totalCount;
	}

	@Override
	public QnaDto getArticle(int seq) {
		QnaDto qnaDto = null;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();

			sql.append("select b.seq,b.name, b.id, b.email, b.bcode, b.subject, b.content, b.hit, b.logtime, r.ref, r.lev, r.step, r.pseq, r.reply \n");
			sql.append("from board b, qna r \n");
			sql.append("where b.seq = r.seq \n");
			sql.append("and b.seq = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, seq);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				qnaDto = new QnaDto();
				qnaDto.setSeq(rs.getInt("seq"));
				qnaDto.setName(rs.getString("name"));
				qnaDto.setId(rs.getString("id"));
				qnaDto.setEmail(rs.getString("email"));
				qnaDto.setBcode(rs.getInt("bcode"));
				qnaDto.setSubject(rs.getString("subject"));
				qnaDto.setContent(rs.getString("content"));
				qnaDto.setHit(rs.getInt("hit"));
				qnaDto.setLogtime(rs.getString("logtime"));
				qnaDto.setRef(rs.getInt("ref"));
				qnaDto.setLev(rs.getInt("lev"));
				qnaDto.setStep(rs.getInt("step"));
				qnaDto.setPseq(rs.getInt("pseq"));
				qnaDto.setReply(rs.getInt("reply"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}

		return qnaDto;
	}

	@Override
	public void updateHit(int seq) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();

			sql.append("update board \n");
			sql.append("set hit=hit+1 \n");
			sql.append("where seq =? \n");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, seq);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
	}

	@Override
	public int replyArticle(QnaDto qnaDto) {
		int seq = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			conn.setAutoCommit(false);
			
			
			StringBuffer update_step = new StringBuffer();

			update_step.append("update qna set step=step+1 \n");
			update_step.append("where ref = ? and step > ?");
			pstmt = conn.prepareStatement(update_step.toString());
			pstmt.setInt(1, qnaDto.getRef());
			pstmt.setInt(2, qnaDto.getStep());
			pstmt.executeUpdate();
			
			
			StringBuffer insert_article = new StringBuffer();
			insert_article.append("insert all \n");
			insert_article.append(" into board(seq, name, id, email, subject, content, hit, logtime, bcode) \n");
			insert_article.append(" values (?,?,?,?,?,?,0,sysdate,?) \n");
			insert_article.append(" into qna(rseq, seq, ref, lev, step, pseq, reply) \n");
			insert_article.append(" values (qna_rseq.nextval, ?, ?, ?, ?, ?, 0) \n");
			insert_article.append("select * from dual");
			pstmt = conn.prepareStatement(insert_article.toString());
			int idx = 0;
			pstmt.setInt(++idx, qnaDto.getSeq());
			pstmt.setString(++idx, qnaDto.getName());
			pstmt.setString(++idx, qnaDto.getId());
			pstmt.setString(++idx, qnaDto.getEmail());
			pstmt.setString(++idx, qnaDto.getSubject());
			pstmt.setString(++idx, qnaDto.getContent());
			pstmt.setInt(++idx, qnaDto.getBcode());
			pstmt.setInt(++idx, qnaDto.getSeq());
			pstmt.setInt(++idx, qnaDto.getRef());
			pstmt.setInt(++idx, qnaDto.getLev()+1);
			pstmt.setInt(++idx, qnaDto.getStep()+1);
			pstmt.setInt(++idx, qnaDto.getPseq());
			pstmt.executeUpdate();

			
			
			StringBuffer update_reply = new StringBuffer();

			update_reply.append("update qna set reply = reply +1 \n");
			update_reply.append("where seq = ?");
			pstmt = conn.prepareStatement(update_reply.toString());
			pstmt.setInt(1, qnaDto.getPseq());
			pstmt.executeUpdate();
			
			conn.commit();
			
			seq = qnaDto.getSeq();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			seq = 0;
		} finally {
			DBClose.close(conn, pstmt);
		}

		return seq;
	}

	@Override
	public int modifyArticle(QnaDto qnaDto) {
		int seq = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();

			sql.append("update board set subject=?, content=? \n");
			sql.append("where bcode = ? and seq = ?");
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setString(++idx, qnaDto.getSubject());
			pstmt.setString(++idx, qnaDto.getContent());
			pstmt.setInt(++idx, qnaDto.getBcode());
			pstmt.setInt(++idx, qnaDto.getSeq());
			pstmt.executeUpdate();
			
			seq = qnaDto.getSeq();
		} catch (SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			System.out.println("dao에서 seq : "+seq);
			seq = 0;
		} finally {
			DBClose.close(conn, pstmt);
		}

		return seq;
	}

	@Override
	public int replyCount(int seq) {
		int count = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();

			sql.append("select reply \n");
			sql.append("from qna \n");
			sql.append("where seq = ? \n");
				
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
			if(rs.next())
				count = rs.getInt(1);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}

		return count;
	}

	@Override
	public int deleteArticle(int seq) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();

			sql.append("delete from qna");
			sql.append("where seq = ?");
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setInt(++idx, seq);
			pstmt.executeUpdate();
			
			
			sql.append("delete from board");
			sql.append("where seq = ?");
			pstmt = conn.prepareStatement(sql.toString());
			int idx2 = 0;
			pstmt.setInt(++idx2, seq);
			pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}

		return seq;
	}

	@Override
	public int getNextSeq() {
		int seq = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select board_seq.nextval from dual");
			sql.append("");
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			rs.next();
			seq = rs.getInt(1);

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return seq;
	}

}
