package com.kitri.board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.kitri.board.model.NoticeDto;
import com.kitri.board.model.ReviewDto;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;

public class ReviewdaoImpl implements ReviewDao {
	
private static ReviewdaoImpl dao;
	
	static{
		dao = new ReviewdaoImpl();
	}
	
	private ReviewdaoImpl(){}
	
	public static ReviewdaoImpl getinstance(){
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
			sql.append("select board_seq.nextval from dual");
			pstmt = conn.prepareStatement(sql.toString());
			rs= pstmt.executeQuery();
			rs.next();
			seq = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(conn, pstmt, rs);			
		}
		
		return seq;
	}

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
			sql.append("from ( select RANK() over(order by seq desc) rank, seq, name, id, email, subject, content, hit, bcode, \n");
			sql.append("              case when trunc(logtime, 'dd')=trunc(sysdate, 'dd') \n");
			sql.append("                   then to_char(logtime, 'hh24:mi:ss') \n");
			sql.append("                   else to_char(logtime, 'yy.mm.dd') \n");
			sql.append("               end as logtime \n");
			sql.append("        from board \n");
			sql.append("        where bcode =?\n");
			
			String key = map.get("key");
			String word = map.get("word");
			if(!key.isEmpty() && !word.isEmpty()) {
				if(key.equals("subject"))
					sql.append("        and subject like '%'||?||'%' \n");
				else
					sql.append("        and " + key + "=? \n");
			}
			
			sql.append("     ) a \n");
			sql.append("where a.rank > ? and a.rank <= ? \n");
//			System.out.println(sql);
			pstmt = conn.prepareStatement(sql.toString());
			int idx =0;
			pstmt.setString(++idx, map.get("bcode"));
			if(!key.isEmpty() && !word.isEmpty())
				pstmt.setString(++idx, map.get("word"));
			pstmt.setString(++idx, map.get("start"));
			pstmt.setString(++idx, map.get("end"));
			rs= pstmt.executeQuery();
			while(rs.next()){
				ReviewDto reviewDto = new ReviewDto();
				reviewDto.setSeq(rs.getInt("seq"));
				reviewDto.setName(rs.getString("name"));
				reviewDto.setId(rs.getString("id"));
				reviewDto.setEmail(rs.getString("email"));
				reviewDto.setBcode(rs.getInt("bcode"));
				reviewDto.setSubject(rs.getString("subject"));
				reviewDto.setContent(rs.getString("content"));
				reviewDto.setHit(rs.getInt("hit"));
				reviewDto.setLogtime(rs.getString("logtime"));				
				
				list.add(reviewDto);
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(conn, pstmt, rs);			
		}	
		
		return list;
	}

	@Override
	public ReviewDto getArticle(int seq) {
		System.out.println("디에이오에서"+seq);
		ReviewDto reviewDto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select seq, name, id, email, subject, content, hit, logtime, bcode \n");
			sql.append("from board \n");
			sql.append("where seq=?");			
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, seq);
			rs= pstmt.executeQuery();
			if(rs.next()){
				reviewDto = new ReviewDto();
				reviewDto.setSeq(rs.getInt("seq"));
				reviewDto.setName(rs.getString("name"));
				reviewDto.setId(rs.getString("id"));
				reviewDto.setEmail(rs.getString("email"));
				reviewDto.setBcode(rs.getInt("bcode"));
				reviewDto.setSubject(rs.getString("subject"));
				reviewDto.setContent(rs.getString("content"));
				reviewDto.setHit(rs.getInt("hit"));
				reviewDto.setLogtime(rs.getString("logtime"));						
			}					
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(conn, pstmt, rs);			
		}		
		return reviewDto;
	}

	@Override
	public void updateHit(int seq) {
		// TODO Auto-generated method stub

	}


	@Override
	public int deleteArticle(int seq) {
		// TODO Auto-generated method stub
		return 0;
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
			sql.append("select count(seq)\n");
			sql.append("from board \n");
			sql.append("where bcode = ? \n");
			sql.append("and to_char(logtime,'yyyymmdd')=to_char(sysdate, 'yyyymmdd')");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, bcode);
			rs= pstmt.executeQuery();
			rs.next();
			newCount = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
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
			sql.append("select count(seq)\n");
			sql.append("from board \n");
			sql.append("where bcode = ? \n");
			String key = map.get("key");//맵에서 키값을 빼와서 넣자.
			String word = map.get("word");//맵에서 검색값을 빼와서 넣자.
			if(!key.isEmpty() && !word.isEmpty()){//키와 검색어가 모두 빈칸이 아닐때만 적용
				if(key.equals("subject"))//키 값이 글제목일때
					sql.append("and subject like '%'||?||'%' \n");
				else
					sql.append("and "+key+"=? \n");
			}
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, map.get("bcode"));
			if(!key.isEmpty() && !word.isEmpty())//키와 검색어가 모두 빈칸이 아닐때만 적용
				pstmt.setString(2, map.get("word"));//검색어를 집어 넣음.
			rs= pstmt.executeQuery();
			rs.next();
			totalCount = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(conn, pstmt, rs);			
		}
		return totalCount;
	}

	@Override
	public int writeArticle(ReviewDto reviewDto) {
		int seq = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn= DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();//얻어온 정보를 db에 때려 박기.
			sql.append("insert \n");
			sql.append(" into board(seq, name, id, email, subject, content, hit, logtime, bcode) \n");
			sql.append(" values (?,?,?,?,?,?,0,sysdate,?)");
			
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setInt(++idx, reviewDto.getSeq());
			pstmt.setString(++idx, reviewDto.getName());
			pstmt.setString(++idx, reviewDto.getId());
			pstmt.setString(++idx, reviewDto.getEmail());
			pstmt.setString(++idx, reviewDto.getSubject());
			pstmt.setString(++idx, reviewDto.getContent());
			pstmt.setInt(++idx, reviewDto.getBcode());			
			pstmt.executeUpdate();		
			seq = reviewDto.getSeq();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBClose.close(conn, pstmt);
		}
		return seq;
	}

	@Override
	public int modifyArticle(ReviewDto reboardDto) {
		// TODO Auto-generated method stub
		return 0;
	}

}
