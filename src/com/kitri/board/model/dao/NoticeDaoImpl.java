package com.kitri.board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.kitri.board.model.NoticeDto;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;

public class NoticeDaoImpl implements NoticeDao {
	
	private static NoticeDaoImpl dao;
	
	static{
		dao = new NoticeDaoImpl();
	}
	
	private NoticeDaoImpl(){}
	
	public static NoticeDaoImpl getinstance(){
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
			sql.append("select notice_seq.nextval from dual");
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
	public int writeArticle(NoticeDto noticeDto) {
		int seq = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn= DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();//얻어온 정보를 db에 때려 박기.
			sql.append("insert \n");
			sql.append(" into notice(seq, nickname, subject, content, hit, logtime, bcode) \n");
			sql.append(" values (?,?,?,?,0,sysdate,?)");
			
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setInt(++idx, noticeDto.getSeq());
			pstmt.setString(++idx, noticeDto.getNickname());
			pstmt.setString(++idx, noticeDto.getSubject());
			pstmt.setString(++idx, noticeDto.getContent());
			pstmt.setInt(++idx, noticeDto.getBcode());			
			pstmt.executeUpdate();		
			seq = noticeDto.getSeq();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBClose.close(conn, pstmt);
		}
		return seq;
	}

	@Override
	public List<NoticeDto> listArticle(Map<String, String> map) {
		List<NoticeDto> list = new ArrayList<NoticeDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select a.* \n");
			sql.append("from ( select RANK() over(order by seq desc) rank, seq, nickname, subject, content, hit, bcode, \n");
			sql.append("              case when trunc(logtime, 'dd')=trunc(sysdate, 'dd') \n");
			sql.append("                   then to_char(logtime, 'hh24:mi:ss') \n");
			sql.append("                   else to_char(logtime, 'yy.mm.dd') \n");
			sql.append("               end as logtime \n");
			sql.append("        from notice \n");
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
				NoticeDto noticeDto = new NoticeDto();
				noticeDto.setSeq(rs.getInt("seq"));
				noticeDto.setNickname(rs.getString("nickname"));
//				noticeDto.setId(rs.getString("id"));
//				noticeDto.setPass(rs.getString("pass"));
				noticeDto.setBcode(rs.getInt("bcode"));
				noticeDto.setSubject(rs.getString("subject"));
				noticeDto.setContent(rs.getString("content"));
				noticeDto.setHit(rs.getInt("hit"));
				noticeDto.setLogtime(rs.getString("logtime"));				
				
				list.add(noticeDto);
			}
					
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(conn, pstmt, rs);			
		}	
		
		return list;
	}

	@Override
	public NoticeDto getArticle(int seq) {
		System.out.println("디에이오에서"+seq);
		NoticeDto noticeDto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select seq, nickname, subject, content, hit, logtime, bcode \n");
			sql.append("from notice \n");
			sql.append("where seq=?");			
			pstmt = conn.prepareStatement(sql.toString());
			System.out.println("dao에서 seq : "+seq);
			pstmt.setInt(1, seq);
			rs= pstmt.executeQuery();
			if(rs.next()){
				noticeDto = new NoticeDto();
				noticeDto.setSeq(rs.getInt("seq"));
				noticeDto.setNickname(rs.getString("nickname"));
				noticeDto.setBcode(rs.getInt("bcode"));
				noticeDto.setSubject(rs.getString("subject"));
				noticeDto.setContent(rs.getString("content"));
				noticeDto.setHit(rs.getInt("hit"));
				noticeDto.setLogtime(rs.getString("logtime"));						
			}	
			System.out.println("dao에서 제목 : "+rs.getString("subject"));
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(conn, pstmt, rs);			
		}		
		return noticeDto;
	}

	@Override
	public void updateHit(int seq) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("update notice set hit=hit+1 \n");
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
	public int modifyArticle(NoticeDto noticeDto) {
		int seq = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("update notice set subject=?,content=? \n");
			sql.append("where seq=?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, noticeDto.getSubject());
			pstmt.setString(2, noticeDto.getContent());
			pstmt.setInt(3, noticeDto.getSeq());
			pstmt.executeUpdate();
			
			seq = noticeDto.getSeq();
		} catch (SQLException e) {
			e.printStackTrace();
			seq = 0;
		} finally {
			DBClose.close(conn, pstmt);
		}
		return seq;
	}

	@Override
	public int deleteArticle(int seq, int bcode) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("delete notice\n");
			sql.append("where bcode=? and seq=?");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, bcode);
			pstmt.setInt(2, seq);
			cnt = pstmt.executeUpdate();			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt);
		}				
		return cnt;
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
			sql.append("from notice \n");
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
			sql.append("from notice \n");
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

}
