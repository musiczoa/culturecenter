package com.kitri.board.model.dao;

import java.sql.*;
import java.util.*;

import com.kitri.board.model.ReviewDto;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;

public class ReviewDaoImpl implements ReviewDao {

	private static ReviewDaoImpl dao;
	
	static {
		dao = new ReviewDaoImpl();
	}
	
	private ReviewDaoImpl(){}
	
	public static ReviewDaoImpl getInstance() {
		return dao;
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
			sql.append("select review_seq.nextval from dual");
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
	
	@Override
	public int writeArticle(ReviewDto reboardDto) {
		int seq = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("insert all \n");
			sql.append("	into review (seq, nickname, subject, content, hit, logtime, bcode) \n");
			sql.append("	values (?, ?, ?, ?, 0, sysdate, 3) \n");
			sql.append("	into review_reboard (rseq, seq, ref, lev, step, pseq, reply) \n");
			sql.append("	values (review_reboard_rseq.nextval, ?, ?, 0, 0, 0, 0) \n");
			sql.append("select * from dual");
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setInt(++idx, reboardDto.getSeq());
			pstmt.setString(++idx, reboardDto.getName());
			pstmt.setString(++idx, reboardDto.getSubject());
			pstmt.setString(++idx, reboardDto.getContent());
			pstmt.setInt(++idx, reboardDto.getSeq());
			pstmt.setInt(++idx, reboardDto.getRef());
			pstmt.executeUpdate();
			seq = reboardDto.getSeq();
		} catch (SQLException e) {
			seq = 0;
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}	
		return seq;
	}

//	@Override
//	public List<ReboardDto> listArticle(Map<String, String> map) {
//		List<ReboardDto> list = new ArrayList<ReboardDto>();
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		ResultSet rs = null;
//		try {
//			conn = DBConnection.makeConnection();
//			StringBuffer sql = new StringBuffer();
//			sql.append("select a.* \n");
//			sql.append("from ( \n");
//			sql.append("        select RANK() OVER(ORDER BY r.ref DESC, r.step ) rank, \n");
//			sql.append("                b.seq, b.name, b.id, b.email, b.subject, b.content, b.hit, b.bcode, \n");
//			sql.append("                case when trunc(b.logtime, 'dd')=trunc(sysdate, 'dd') \n");
//			sql.append("                       then to_char(b.logtime, 'hh24:mi:ss') \n");
//			sql.append("                       else to_char(b.logtime, 'yy.mm.dd') \n");
//			sql.append("               end as logtime, \n");
//			sql.append("               r.ref, r.lev, r.step, r.pseq, r.reply \n");
//			sql.append("        from board b, reboard r \n");
//			sql.append("        where b.seq = r.seq \n");
//			sql.append("        and b.bcode=? \n");
//			String key = map.get("key");
//			String word = map.get("word");
//			if(!key.isEmpty() && !word.isEmpty()) {
//				if(key.equals("subject"))
//					sql.append("        and b.subject like '%'||?||'%' \n");
//				else
//					sql.append("        and b." + key + "=? \n");
//			}			
//			sql.append("     ) a \n");
//			sql.append("where a.rank > ? and a.rank <= ? \n");
////			System.out.println(sql);
//			pstmt = conn.prepareStatement(sql.toString());
//			int idx = 0;
//			pstmt.setString(++idx, map.get("bcode"));
//			if(!key.isEmpty() && !word.isEmpty())
//				pstmt.setString(++idx, map.get("word"));
//			pstmt.setString(++idx, map.get("start"));
//			pstmt.setString(++idx, map.get("end"));
//			rs = pstmt.executeQuery();
//			while(rs.next()) {
//				ReboardDto reboardDto = new ReboardDto();
//				reboardDto.setSeq(rs.getInt("seq"));
//				reboardDto.setName(rs.getString("name"));
//				reboardDto.setId(rs.getString("id"));
//				reboardDto.setEmail(rs.getString("email"));
//				reboardDto.setBcode(rs.getInt("bcode"));
//				reboardDto.setSubject(rs.getString("subject"));
//				reboardDto.setContent(rs.getString("content"));
//				reboardDto.setHit(rs.getInt("hit"));
//				reboardDto.setLogtime(rs.getString("logtime"));
//				reboardDto.setRef(rs.getInt("ref"));
//				reboardDto.setLev(rs.getInt("lev"));
//				reboardDto.setStep(rs.getInt("step"));
//				reboardDto.setPseq(rs.getInt("pseq"));
//				reboardDto.setReply(rs.getInt("reply"));
//				
//				list.add(reboardDto);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			DBClose.close(conn, pstmt, rs);
//		}
//		return list;
//	}
	
	@Override
	public List<ReviewDto> listArticle(Map<String, String> map) {
		List<ReviewDto> list = new ArrayList<ReviewDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select a.* \n");
			sql.append("from ( \n");
			sql.append("        select RANK() OVER(ORDER BY r.ref DESC, r.step ) rank, \n");
			sql.append("                b.seq, b.nickname, b.subject, b.content, b.hit, b.bcode, \n");
			sql.append("                case when trunc(b.logtime, 'dd')=trunc(sysdate, 'dd') \n");
			sql.append("                        then to_char(b.logtime, 'hh24:mi:ss') \n");
			sql.append("                      else to_char(b.logtime, 'yy.mm.dd') \n");
			sql.append("               end as logtime, \n");
			sql.append("               r.ref, r.lev, r.step, r.pseq, r.reply \n");
			sql.append("        from review b, review_reboard r \n");
			sql.append("        where b.seq = r.seq \n");
			String key = map.get("key");
			String word = map.get("word");
			if(!key.isEmpty() && !word.isEmpty()) {
				if(key.equals("subject"))
					sql.append("        and b.subject like '%'||?||'%' \n");
				else
					sql.append("        and b." + key + "=? \n");
			}			
			sql.append("     ) a \n");
			sql.append("where a.rank > ? and a.rank <= ? \n");
//			System.out.println(sql);
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			if(!key.isEmpty() && !word.isEmpty())
				pstmt.setString(++idx, map.get("word"));
			pstmt.setString(++idx, map.get("start"));
			pstmt.setString(++idx, map.get("end"));
			rs = pstmt.executeQuery();
			while(rs.next()) {
				ReviewDto reboardDto = new ReviewDto();
				reboardDto.setSeq(rs.getInt("seq"));
				reboardDto.setName(rs.getString("nickname"));
				reboardDto.setBcode(rs.getInt("bcode"));
				reboardDto.setSubject(rs.getString("subject"));
				reboardDto.setContent(rs.getString("content"));
				reboardDto.setHit(rs.getInt("hit"));
				reboardDto.setLogtime(rs.getString("logtime"));
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
	public ReviewDto getArticle(int seq) {
		ReviewDto reboardDto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select b.seq, b.nickname, b.bcode, \n");
			sql.append("		   b.subject, b.content, b.hit, b.logtime, \n");
			sql.append("		   r.ref, r.lev, r.step, r.pseq, r.reply \n");
			sql.append("from review b, review_reboard r \n");
			sql.append("where b.seq=r.seq \n");
			sql.append("and b.seq=?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				reboardDto = new ReviewDto();
				reboardDto.setSeq(rs.getInt("seq"));
				reboardDto.setName(rs.getString("nickname"));
				reboardDto.setBcode(rs.getInt("bcode"));
				reboardDto.setSubject(rs.getString("subject"));
				reboardDto.setContent(rs.getString("content"));
				reboardDto.setHit(rs.getInt("hit"));
				reboardDto.setLogtime(rs.getString("logtime"));
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
			sql.append("update review set hit=hit+1 \n");
			sql.append("where seq=?");
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
	public int getNewArticleCount(int bcode) {
		int newCount = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select count(seq) \n");
			sql.append("from review \n");
			sql.append("where bcode = ? \n");
			sql.append("and to_char(logtime, 'yyyymmdd')=to_char(sysdate, 'yyyymmdd')");
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
			sql.append("from review \n");
			sql.append("where bcode = ? \n");
			String key = map.get("key");
			String word = map.get("word");
			if(!key.isEmpty() && !word.isEmpty()) {
				if(key.equals("subject"))
					sql.append("and subject like '%'||?||'%' \n");
				else
					sql.append("and " + key + "=? \n");
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
	public int replyArticle(ReviewDto reboardDto) {
		int seq = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			conn.setAutoCommit(false);
			
			StringBuffer update_step = new StringBuffer();
			update_step.append("update review set step = step + 1 \n");
			update_step.append("where ref = ? and step > ?");
			pstmt = conn.prepareStatement(update_step.toString());	
			pstmt.setInt(1, reboardDto.getRef());
			pstmt.setInt(2, reboardDto.getStep());
			pstmt.executeUpdate();
			
			StringBuffer insert_article = new StringBuffer();
			insert_article.append("insert all \n");
			insert_article.append("	into review (seq, nickname, subject, content, hit, logtime, bcode) \n");
			insert_article.append("	values (?, ?, ?, ?, ?, ?, 0, sysdate, ?) \n");
			insert_article.append("	into review_reboard (rseq, seq, ref, lev, step, pseq, reply) \n");
			insert_article.append("	values (review_reboard_rseq.nextval, ?, ?, ?, ?, ?, 0) \n");
			insert_article.append("select * from dual");
			pstmt = conn.prepareStatement(insert_article.toString());
			int idx = 0;
			pstmt.setInt(++idx, reboardDto.getSeq());
			pstmt.setString(++idx, reboardDto.getName());
			pstmt.setString(++idx, reboardDto.getSubject());
			pstmt.setString(++idx, reboardDto.getContent());
			pstmt.setInt(++idx, reboardDto.getBcode());
			pstmt.setInt(++idx, reboardDto.getSeq());
			pstmt.setInt(++idx, reboardDto.getRef());
			pstmt.setInt(++idx, reboardDto.getLev() + 1);
			pstmt.setInt(++idx, reboardDto.getStep() + 1);
			pstmt.setInt(++idx, reboardDto.getPseq());
			pstmt.executeUpdate();
			
			StringBuffer update_reply = new StringBuffer();
			update_reply.append("update review set reply = reply + 1 \n");
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
				e1.printStackTrace();
			}
			seq = 0;
		} finally {
			DBClose.close(conn, pstmt);
		}
		return seq;
	}

	@Override
	public int modifyArticle(ReviewDto reboardDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int replyCount(int seq) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteArticle(int seq) {
		// TODO Auto-generated method stub
		return 0;
	}

}
