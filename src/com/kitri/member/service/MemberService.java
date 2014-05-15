package com.kitri.member.service;

import java.util.List;

import com.kitri.member.dto.MemberDto;

public interface MemberService {
	
	
	public int nicknameCheck(String nickname);
	
	public int register(MemberDto memberDto);
	
	public MemberDto getMember(String id);
	
	public int modify(MemberDto memberDto);//0은 수정성공, 0아니면 수정실패
	
	public int delete(String id);
	
	public List<MemberDto> memberList();

	public MemberDto login(String id, String pass);
	

}
