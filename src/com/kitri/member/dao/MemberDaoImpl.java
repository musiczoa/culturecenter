package com.kitri.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.kitri.member.dto.MemberDto;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;



public class MemberDaoImpl implements MemberDao{

	private static MemberDaoImpl dao;
	
	static{
		dao =new MemberDaoImpl();
		
	}
	private MemberDaoImpl(){}
	
	public static MemberDaoImpl getinstance(){
		return dao;
	}
	
	@Override
	public MemberDto getMember(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int register(MemberDto memberDto) { //회원가입
		int cnt=0;
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		try {
			conn=DBConnection.makeConnection();
			String sql="insert into member(email, nickname, pass,tel1,tel2,tel3, birth1,birth2,birth3, gender, joindate)\n";
			sql +="values (?, ?, ?, ?, ?, ?,?,?,?,?, sysdate)";
			pstmt=conn.prepareStatement(sql);
			
			System.out.println(sql);
			
			int idx=0;
			pstmt.setString(++idx, memberDto.getEmail());
			pstmt.setString(++idx, memberDto.getNickname());
			pstmt.setString(++idx, memberDto.getPass());
			pstmt.setString(++idx, memberDto.getTel1());
			pstmt.setString(++idx, memberDto.getTel2());
			pstmt.setString(++idx, memberDto.getTel3());
			pstmt.setString(++idx, memberDto.getBirth1());
			pstmt.setString(++idx, memberDto.getBirth2());
			pstmt.setString(++idx, memberDto.getBirth3());
			pstmt.setString(++idx, memberDto.getGender());
			
			cnt=pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBClose.close(conn, pstmt);
		}
		System.out.println("등록"+cnt);
		return cnt;
	}

	@Override
	public int modify(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<MemberDto> memberList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberDto login(String id, String pass) {
	 MemberDto memberDto=null;
	 Connection conn=null;
	 PreparedStatement pstmt=null;
	 ResultSet rs= null;
	 
	 try {
		conn=DBConnection.makeConnection();
		String sql="";
//		sql+="select id,nickname,tel1"
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 return memberDto;
}

	@Override
	public int nicknameCheck(String nickname) {
		int cnt = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql=new StringBuffer();
			sql.append("select count(nickname) \n");
			sql.append("from member \n");
			sql.append("where nickname=?\n");					
			pstmt = conn.prepareStatement(sql.toString());
			
			pstmt.setString(1, nickname);
			
			rs = pstmt.executeQuery();
			
			rs.next();
			
			cnt=rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		
		System.out.println("nick네임갯수:"+cnt);
		return cnt;
	}

}
