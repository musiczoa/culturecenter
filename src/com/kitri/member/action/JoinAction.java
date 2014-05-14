package com.kitri.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.action.Action;
import com.kitri.member.dto.MemberDto;
import com.kitri.member.service.MemberServiceImpl;

public class JoinAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		
		
		
		MemberDto memberDto= new MemberDto();
		
		memberDto.setEmail(request.getParameter("id1")+"@"+request.getParameter("id2"));
		
		memberDto.setPass(request.getParameter("pass"));
		
		memberDto.setNickname(request.getParameter("nickname"));
		
		memberDto.setTel1(request.getParameter("tel1"));
		memberDto.setTel2(request.getParameter("tel2"));
		memberDto.setTel3(request.getParameter("tel3"));
		
		memberDto.setBirth1(request.getParameter("birth1"));
		memberDto.setBirth2(request.getParameter("birth2"));
		memberDto.setBirth3(request.getParameter("birth3"));
		
		memberDto.setGender(request.getParameter("gender"));
		

	
		int cnt = MemberServiceImpl.getInstance().register(memberDto);
		
//		if (cnt == 0)
//			path = "/join/fail.jsp";
//		else {
//			request.setAttribute("userInfo", memberDto);
//			flag = false;
//			path = "/join/success.jsp";
//		}
		return cnt == 0 ? "/join/fail.jsp?": "/join/success.jsp?";
	}

}
