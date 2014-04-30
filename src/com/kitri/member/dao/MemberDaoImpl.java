package com.kitri.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

import com.kitri.member.dto.MemberDto;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;



public class MemberDaoImpl implements MemberDao{

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
			String sql="insert into member(id1, id2, id3, pass1, pass2, name, tel1, tel2, tel3, birth1, birth2, birth3, joindate)\n";
			sql +="values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, sysdate)";
			pstmt=conn.prepareStatement(sql);
			int idx=0;
			pstmt.setString(++idx, memberDto.getId1());
			pstmt.setString(++idx, memberDto.getId2());
			pstmt.setString(++idx, memberDto.getId3());
			pstmt.setString(++idx, memberDto.getPass1());
			pstmt.setString(++idx, memberDto.getPass2());
			pstmt.setString(++idx, memberDto.getName());
			pstmt.setString(++idx, memberDto.getTel1());
			pstmt.setString(++idx, memberDto.getTel2());
			pstmt.setString(++idx, memberDto.getTel3());
			pstmt.setString(++idx, memberDto.getBirth1());
			pstmt.setString(++idx, memberDto.getBirth2());
			pstmt.setString(++idx, memberDto.getBirth3());
			
		
			cnt=pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBClose.close(conn, pstmt);
		}
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int register(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modify(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return 0;
	}

}
