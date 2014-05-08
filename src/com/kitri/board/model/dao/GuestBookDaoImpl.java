package com.kitri.board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.kitri.board.model.GuestBookDto;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;

public class GuestBookDaoImpl implements GuestBookDao {
	
	
	private static GuestBookDaoImpl dao;
	
	static{
		dao = new GuestBookDaoImpl();
	}
	
	private GuestBookDaoImpl(){}
	
	public static GuestBookDaoImpl getinstance(){
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
	public int writeArticle(GuestBookDto guestbookDto) {
		int seq = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn= DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();//얻어온 정보를 db에 때려 박기.
//			sql.append("insert \n");
//			sql.append(" into board(seq, name, content, logtime, bcode) \n");
//			sql.append(" values (?,?,?,sysdate,?)");
			sql.append("insert \n");
			sql.append(" into board(seq, name, id, email, subject, content, hit, logtime, bcode) \n");
			sql.append(" values (?,?,'jjj1264','hw9094@naver.com','하잉',?,0,sysdate,?)");
			
			pstmt = conn.prepareStatement(sql.toString());
			int idx = 0;
			pstmt.setInt(++idx, guestbookDto.getSeq());
			pstmt.setString(++idx, guestbookDto.getNickname());
			pstmt.setString(++idx, guestbookDto.getContent());
			pstmt.setInt(++idx, guestbookDto.getBcode());			
			pstmt.executeUpdate();		
			seq = guestbookDto.getSeq();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBClose.close(conn, pstmt);
		}
		return seq;
	}


	@Override
	
	public List<GuestBookDto> listArticle(Map<String, String> map) {
		
		List<GuestBookDto> list =new ArrayList<GuestBookDto>();
		
		Connection conn=null;
		PreparedStatement pstmt= null;
		ResultSet rs =null;
		
		try {
			conn=DBConnection.makeConnection();
			StringBuffer sql=new StringBuffer();
			sql.append("select seq, name,content, \n");
			sql.append("		case \n");
			sql.append("		when to_char(logtime,'yyyymmdd')=to_char(sysdate,'yyyymmdd') \n");
			sql.append("        then to_char(logtime, 'hh24:mi:ss') \n");
			sql.append("        else to_char(logtime,'yy.mm.dd')\n");
			sql.append("        end as logtime\n");
			sql.append("from guestbook \n");
			sql.append("order by seq desc\n");
			
			System.out.println(sql);
			
			pstmt =conn.prepareStatement(sql.toString());
			rs=pstmt.executeQuery();
			
			while(rs.next()){
				GuestBookDto guestbookDto =new GuestBookDto();
				guestbookDto.setSeq(rs.getInt("seq"));
				guestbookDto.setNickname(rs.getString("name"));
//				guestbookDto.setBcode(rs.getInt("bcode"));
				guestbookDto.setContent(rs.getString("content"));
				guestbookDto.setLogtime(rs.getString("logtime"));
			
				list.add(guestbookDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBClose.close(conn, pstmt, rs);
		}
		
		return list;
	}

	@Override
	public int modifyArticle(GuestBookDto guestbookDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteArticle(int gseq) {
		// TODO Auto-generated method stub
		return 0;
	}

}
