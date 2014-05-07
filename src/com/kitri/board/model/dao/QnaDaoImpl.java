package com.kitri.board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.kitri.board.model.ReboardDto;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;


public class QnaDaoImpl implements QnaDao {
	

	private static QnaDaoImpl dao;
	
	static{
		dao = new QnaDaoImpl();
	}
	
	private QnaDaoImpl(){}
	

	public static QnaDaoImpl getInstance(){
		return dao;
	}

	@Override
	public List<ReboardDto> listArticle(int start, int end) {
		List<ReboardDto> list = new ArrayList<ReboardDto>();
		Connection conn = null;
	    PreparedStatement pstmt = null;
	    ResultSet rs = null;
	      try {
	         conn = DBConnection.makeConnection();
	         StringBuffer sql = new StringBuffer();
	         sql.append("select a.* \n");
	         sql.append("from ( \n");
	         sql.append("	select RANK() OVER(ORDER BY r.ref DESC, r.step ) rank, \n");
	         sql.append("			b.seq, b.name, b.subject, b.content, \n");
	         sql.append("			case when trunc(b.logtime, 'dd')=trunc(sysdate, 'dd') \n");
	         sql.append("  				 then to_char(b.logtime, 'hh24:mi:ss') \n");
	         sql.append("				 else to_char(b.logtime, 'yy.mm.dd') \n");
	         sql.append(" 			end as logtime, \n");
	         sql.append("			r.ref, r.lev, r.step, r.pseq, r.reply \n");
	         sql.append(" 	from board b, reboard r \n");
	         sql.append("	where b.seq = r.seq \n");
	         sql.append("	) a \n");
	         sql.append(" where a.rank > ? and a.rank <= ? \n");
	         
	         System.out.println(sql);
	         pstmt = conn.prepareStatement(sql.toString());
	         pstmt.setInt(1, start);
	         pstmt.setInt(2, end);
	         rs = pstmt.executeQuery();
	         while(rs.next()) {
	        	 ReboardDto qnaDto = new ReboardDto();
	        	 qnaDto.setSeq(rs.getInt("seq"));
	        	 qnaDto.setName(rs.getString("name"));
	        	 qnaDto.setSubject(rs.getString("subject"));
	        	 qnaDto.setContent(rs.getString("content"));
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
	public List<ReboardDto> searchArticle(Map<String, String> map) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int getNextSeq() {
		int seq = 0;
		Connection conn = null;
		PreparedStatement pstmt =null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select qna_seq.nextval from dual");
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
	public int writeArticle(ReboardDto qnaDto) {
		int seq = 0;
		Connection conn = null;
		PreparedStatement pstmt =null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("insert all \n");
			sql.append("into board(seq, nickname, email, subject, content, hit, logtime, bcode) \n");
			sql.append("values(?, ?, ?, ?, ?, 0, sysdate, 3) \n");
			sql.append("into reboard(rseq, seq, ref, lev, step, pseq, reply) \n");
			sql.append("values(reboard_rseq.nextval, ?, ?, 0, 0, 0, 0) \n");
			sql.append("select * from dual");
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setInt(++idx, qnaDto.getSeq());
			pstmt.setString(++idx, qnaDto.getNickname());
			pstmt.setString(++idx, qnaDto.getEmail());
			pstmt.setString(++idx, qnaDto.getSubject());
			pstmt.setString(++idx, qnaDto.getContent());
			pstmt.setInt(++idx, qnaDto.getSeq());
			pstmt.setInt(++idx, qnaDto.getRef());
			pstmt.executeUpdate();
			seq = qnaDto.getSeq();
		} catch (SQLException e) {
			seq = 0;
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
		return seq;
	}

	@Override
	public ReboardDto getArticle(int seq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void updateHit(int seq) {
		// TODO Auto-generated method stub

	}

	@Override
	public int replyArticle(ReboardDto reboardDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyArticle(ReboardDto reboardDto) {
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
