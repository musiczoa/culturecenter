package com.kitri.member.service;

import java.util.List;

import com.kitri.member.dto.MemberDto;

public interface MemberService {
	
	
	public int nicknameCheck(String nickname);
	
	public int register(MemberDto memberDto);
	
	public MemberDto getMember(String id);
	
	public int modify(MemberDto memberDto);//0�� ��������, 0�ƴϸ� ��������
	
	public int delete(String id);
	
	public List<MemberDto> memberList();

	public MemberDto login(String id, String pass);
	

}
