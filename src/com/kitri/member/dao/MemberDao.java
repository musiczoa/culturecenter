package com.kitri.member.dao;

import java.util.List;

import com.kitri.member.dto.MemberDto;


public interface MemberDao {
	
	public int nicknameCheck(String nickname);
	
	public MemberDto getMember(String id);

	public int register(MemberDto memberDto);
	
	public int modify(MemberDto memberDto);
	
	public int delete(String id);
	
	public List<MemberDto> memberList();
	
	public MemberDto login(String id, String pass);  //로그인하기
} 
