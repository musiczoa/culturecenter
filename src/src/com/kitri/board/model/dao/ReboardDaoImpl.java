package com.kitri.board.model.dao;

import java.sql.*;
import java.util.*;

import com.kitri.board.model.ReboardDto;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;

public class ReboardDaoImpl implements ReboardDao {
	// //////////////////싱글톤패턴 ////////////////////////// 객체를 하나만 만들자
	private static ReboardDaoImpl dao;

	static {

		dao = new ReboardDaoImpl();
	}

	private ReboardDaoImpl() {
	}

	public static ReboardDaoImpl getInstance() {
		return dao;
	}

	// //////////////////////////////////////////////////////////////////////////
	@Override
	public int writeArticle(ReboardDto reboardDto) {
		int seq = 0;

		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("insert all \n");
			sql.append("into board (seq, name, id, email, subject, content, hit, logtime, bcode) \n");
			sql.append("values (?,?,?,?,?,?,0,sysdate,?) \n");
			sql.append("into reboard (rseq, seq, ref, lev, step, pseq, reply) \n");
			sql.append("values (reboard_rseq.nextval, ?, ?, 0, 0, 0, 0) \n");
			sql.append("select * from dual ");

			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setInt(++idx, reboardDto.getSeq());
			pstmt.setString(++idx, reboardDto.getName());
			pstmt.setString(++idx, reboardDto.getId());
			pstmt.setString(++idx, reboardDto.getEmail());
			pstmt.setString(++idx, reboardDto.getSubject());
			pstmt.setString(++idx, reboardDto.getContent());
			pstmt.setInt(++idx, reboardDto.getBcode());
			pstmt.setInt(++idx, reboardDto.getSeq());
			pstmt.setInt(++idx, reboardDto.getRef());

			pstmt.executeUpdate();
			seq = reboardDto.getSeq();

		} catch (SQLException e) {
			seq = 0; // 이렇게 해주는게 정석이긴 해!
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}
		return seq;
	}

	@Override
	public List<ReboardDto> listArticle(Map<String, String> map) {
		List<ReboardDto> list = new ArrayList<ReboardDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select a.* \n");
			sql.append("from (\n");
			sql.append("select RANK() OVER(ORDER BY r.ref DESC, r.step) rank, \n");
			sql.append("			b.seq, b.name, b.id, b.email, b.subject, b.content, b.hit, b.bcode, \n");
			sql.append("			case when trunc(b.logtime, 'dd')=trunc(sysdate, 'dd') \n");
			sql.append("			then to_char(b.logtime, 'hh24:mi:ss') \n");
			sql.append("				else to_char(b.logtime, 'yy.mm.dd') \n");
			sql.append("				end as logtime, \n");
			sql.append("			r.ref, r.lev, r.step, r.pseq, r.reply \n");
			sql.append("		from board b, reboard r \n");
			sql.append("		where b.seq = r.seq and b.bcode=?\n");
			sql.append(") a \n");
			sql.append("where a.rank > ? and a.rank <= ? \n");

//			System.out.println(sql);
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;

			pstmt.setString(++idx, map.get("bcode"));
			pstmt.setString(++idx, map.get("start"));
			pstmt.setString(++idx, map.get("end"));

			rs = pstmt.executeQuery();
			while (rs.next()) {
				ReboardDto reboardDto = new ReboardDto();

				reboardDto.setSeq(rs.getInt("seq"));
				reboardDto.setName(rs.getString("name"));
				reboardDto.setId(rs.getString("id"));
				reboardDto.setEmail(rs.getString("email"));
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
	public ReboardDto getArticle(int seq) {
		ReboardDto reboardDto = null;

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select b.seq, b.name, b.id, b.email, b.bcode, b.subject, b.content, ");
			sql.append("	   b.hit, b.logtime, r.ref, r.lev, r.step, r.pseq, r.reply ");
			sql.append("from board b, reboard r ");
			sql.append("where b.seq=r.seq ");
			sql.append("and b.seq=? ");

			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				reboardDto = new ReboardDto();
				
				reboardDto.setSeq(rs.getInt("seq"));
				reboardDto.setName(rs.getString("name"));
				reboardDto.setId(rs.getString("id"));
				reboardDto.setEmail(rs.getString("email"));
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
			sql.append("update board ");
			sql.append("set hit = hit+1 ");
			sql.append("where seq=? ");

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

	@Override
	public int getNextSeq() {
		int seq = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select board_seq.nextval from dual \n");

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