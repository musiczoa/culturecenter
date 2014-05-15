package com.kitri.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.action.Action;
import com.kitri.member.dto.MemberDto;
import com.kitri.member.service.MemberServiceImpl;

public class LoginAction implements Action {


	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");

		
		MemberDto memberDto= MemberServiceImpl.getInstance().login(id, pass);

		return memberDto==null? "/login/fail.jsp?" :"/login/succes.jsp?";
	}

}
