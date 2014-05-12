package com.kitri.member.service;

import java.util.List;

import com.kitri.member.dto.MemberDto;

import com.kitri.member.dao.*;

public class MemberServiceImpl implements MemberService {
	
	private static MemberServiceImpl service;
	
	static {
		service= new MemberServiceImpl();
		
	}
	
	private MemberServiceImpl(){}
	
	public static MemberServiceImpl getInstance(){
		return service;
	}
	
	@Override
	public int nicknameCheck(String nickname) { 
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int register(MemberDto memberDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public MemberDto getMember(String id) {
		// TODO Auto-generated method stub
		return null;
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
		System.out.println("MemberServiceImpl==id:"+id+"pass"+pass);
		MemberDto memberDto = MemberDaoImpl.getinstance().login(id,pass);
		
		return memberDto;
	}

}
