package com.kitri.board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.kitri.board.model.ReboardDto;
import com.kitri.board.service.ReboardServiceImpl;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;

public class ReboardDaoImpl implements ReboardDao {
	// /////////////싱글톤패턴(객체를 하나만 생성하게 하는것)//////////////
	private static ReboardDaoImpl dao;

	static {
		dao = new ReboardDaoImpl();
	}

	private ReboardDaoImpl() {
	}

	public static ReboardDaoImpl getInstance() {
		return dao;
	}

	// /////////////싱글톤패턴(객체를 하나만 생성하게 하는것)//////////////

	public int writeArticle(ReboardDto reboardDto) {
		int seq = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("insert all \n");
			sql.append(" into qna(seq, nickname, subject, content, logtime, bcode, hit) \n");
			sql.append(" values (?,?,?,?,sysdate,2,0) \n");
			sql.append(" into qna_reboard(rseq, seq, ref, lev, step, pseq, reply) \n");
			sql.append(" values (qna_reboard_rseq.nextval, ?, ?, 0, 0, 0, 0) \n");
			sql.append("select * from dual");
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setInt(++idx, reboardDto.getSeq());
			pstmt.setString(++idx, reboardDto.getNickname());
			pstmt.setString(++idx, reboardDto.getSubject());
			pstmt.setString(++idx, reboardDto.getContent());
			pstmt.setInt(++idx, reboardDto.getSeq());
			pstmt.setInt(++idx, reboardDto.getRef());

			pstmt.executeUpdate();

			seq = reboardDto.getSeq();
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
	public List<ReboardDto> listArticle(Map<String, String> map) {
		List<ReboardDto> list = new ArrayList<ReboardDto>();

		ReboardDto reboardDto = null;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select a.* \n");
			sql.append("from ( \n");
			sql.append("        select RANK() OVER(ORDER BY r.ref DESC, r.step) rank, \n");
			sql.append("                b.seq, b.nickname, b.subject, b.content, \n");
			sql.append("                case when trunc(b.logtime, 'dd')=trunc(sysdate, 'dd') \n");
			sql.append("                       then to_char(b.logtime, 'hh24:mi:ss') \n");
			sql.append("                       else to_char(b.logtime, 'yy.mm.dd') \n");
			sql.append("               end as logtime, \n");
			sql.append("               b.bcode, b.hit, r.ref, r.lev, r.step, r.pseq, r.reply ");
			sql.append("        from qna b, qna_reboard r \n");
			sql.append("        where b.seq=r.seq \n");
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
			if(!key.isEmpty() && !word.isEmpty()){
				pstmt.setString(++idx, map.get("word"));
			}
			pstmt.setString(++idx, map.get("start"));
			pstmt.setString(++idx, map.get("end"));
		

			rs = pstmt.executeQuery();

			while (rs.next()) {
				reboardDto = new ReboardDto();
				reboardDto.setSeq(rs.getInt("seq"));
				reboardDto.setNickname(rs.getString("nickname"));
				reboardDto.setSubject(rs.getString("subject"));
				reboardDto.setContent(rs.getString("content"));
				reboardDto.setLogtime(rs.getString("logtime"));
				reboardDto.setBcode(rs.getInt("bcode"));
				reboardDto.setHit(rs.getInt("hit"));
				reboardDto.setRef(rs.getInt("ref"));
				reboardDto.setLev(rs.getInt("lev"));
				reboardDto.setStep(rs.getInt("step"));
				reboardDto.setPseq(rs.getInt("pseq"));
				reboardDto.setReply(rs.getInt("reply"));
				list.add(reboardDto);
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
			sql.append("from qna \n");
			sql.append("where to_char(logtime,'yyyymmdd') = to_char(sysdate,'yyyymmdd')");
			pstmt = conn.prepareStatement(sql.toString());
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
			sql.append("from qna \n");
			String key = map.get("key");
			String word = map.get("word");
				if(!key.isEmpty() && !word.isEmpty()){
					if(key.equals("subject")){
			sql.append("where subject like '%'||?||'%' \n");
					}else{
			sql.append("where "+key+"='%'||?||'%' \n");
					}
					
				}
			pstmt = conn.prepareStatement(sql.toString());
			if(!key.isEmpty() && !word.isEmpty())
				pstmt.setString(1, map.get("word"));
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
	public ReboardDto getArticle(int seq) {
		ReboardDto reboardDto = null;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select b.seq, b.nickname, b.subject, b.content, b.logtime, b.hit, r.ref, r.lev, r.step, r.pseq, r.reply \n");
			sql.append("from qna b, qna_reboard r \n");
			sql.append("where b.seq = r.seq \n");
			sql.append("and b.seq = ?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, seq);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				reboardDto = new ReboardDto();
				reboardDto.setSeq(rs.getInt("seq"));
				reboardDto.setNickname(rs.getString("nickname"));
				reboardDto.setSubject(rs.getString("subject"));
				reboardDto.setContent(rs.getString("content"));
				reboardDto.setLogtime(rs.getString("logtime"));
				reboardDto.setHit(rs.getInt("hit"));
				reboardDto.setRef(rs.getInt("ref"));
				reboardDto.setLev(rs.getInt("lev"));
				reboardDto.setStep(rs.getInt("step"));
				reboardDto.setPseq(rs.getInt("pseq"));
				reboardDto.setReply(rs.getInt("reply"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}

		return reboardDto;
	}

	@Override
	public void updateHit(int seq) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();

			sql.append("update qna \n");
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
	public int replyArticle(ReboardDto reboardDto) {
		int seq = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			conn.setAutoCommit(false);
			
			
			StringBuffer update_step = new StringBuffer();

			update_step.append("update qna_reboard set step=step+1 \n");
			update_step.append("where ref = ? and step > ?");
			pstmt = conn.prepareStatement(update_step.toString());
			pstmt.setInt(1, reboardDto.getRef());
			pstmt.setInt(2, reboardDto.getStep());
			pstmt.executeUpdate();
			
			
			StringBuffer insert_article = new StringBuffer();
			insert_article.append("insert all \n");
			insert_article.append(" into qna(seq, nickname, subject, content, logtime, bcode, hit) \n");
			insert_article.append(" values (?,?,?,?,sysdate,2,0) \n");
			insert_article.append(" into qna_reboard(rseq, seq, ref, lev, step, pseq, reply) \n");
			insert_article.append(" values (qna_reboard_rseq.nextval, ?, ?, ?, ?, ?, 0) \n");
			insert_article.append("select * from dual");
			pstmt = conn.prepareStatement(insert_article.toString());
			int idx = 0;
			pstmt.setInt(++idx, reboardDto.getSeq());
			pstmt.setString(++idx, reboardDto.getNickname());
			pstmt.setString(++idx, reboardDto.getSubject());
			pstmt.setString(++idx, reboardDto.getContent());
			pstmt.setInt(++idx, reboardDto.getSeq());
			pstmt.setInt(++idx, reboardDto.getRef());
			pstmt.setInt(++idx, reboardDto.getLev()+1);
			pstmt.setInt(++idx, reboardDto.getStep()+1);
			pstmt.setInt(++idx, reboardDto.getPseq());
			pstmt.executeUpdate();

			
			
			StringBuffer update_reply = new StringBuffer();

			update_reply.append("update qna_reboard set reply = reply +1 \n");
			update_reply.append("where seq = ?");
			pstmt = conn.prepareStatement(update_reply.toString());
			pstmt.setInt(1, reboardDto.getPseq());
			pstmt.executeUpdate();
			
			conn.commit();
			
			seq = reboardDto.getSeq();
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
	public int modifyArticle(ReboardDto reboardDto) {
		int seq = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();

			sql.append("update qna set subject=?, content=? \n");
			sql.append("where seq = ?");
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setString(++idx, reboardDto.getSubject());
			pstmt.setString(++idx, reboardDto.getContent());
			pstmt.setInt(++idx, reboardDto.getSeq());
			pstmt.executeUpdate();
			
			seq = reboardDto.getSeq();
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
	public int replyCount(int seq) {
		int count = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();

			sql.append("select reply \n");
			sql.append("from qna_reboard \n");
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
		int count = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			
			StringBuffer update_reboard = new StringBuffer();
			update_reboard.append("	update qna_reboard \n");
			update_reboard.append("	set reply=reply-1 \n");
			update_reboard.append("	where seq = ( \n");
			update_reboard.append("				select pseq \n");
			update_reboard.append("				from qna_reboard \n");
			update_reboard.append("				where seq=? \n");
			update_reboard.append("				) \n");
			pstmt = conn.prepareStatement(update_reboard.toString());
			int idx = 0;
			pstmt.setInt(++idx, seq);
			pstmt.executeUpdate();
			
			
			
			StringBuffer delete_qna_reboard = new StringBuffer();
			delete_qna_reboard.append("delete from qna_reboard \n");
			delete_qna_reboard.append("where seq = ?");
			pstmt = conn.prepareStatement(delete_qna_reboard.toString());
			int idx1 = 0;
			pstmt.setInt(++idx1, seq);
			pstmt.executeUpdate();
			
			StringBuffer delete_qna = new StringBuffer();
			delete_qna.append("delete from qna \n");
			delete_qna.append("where seq = ?");
			pstmt = conn.prepareStatement(delete_qna.toString());
			int idx2 = 0;
			pstmt.setInt(++idx2, seq);
			pstmt.executeUpdate();
			
			count=seq;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}

		return count;
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
			sql.append("select qna_seq.nextval from dual");
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
