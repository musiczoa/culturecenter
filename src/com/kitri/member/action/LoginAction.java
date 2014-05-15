package com.kitri.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kitri.action.Action;
import com.kitri.member.dto.MemberDto;
import com.kitri.member.service.MemberServiceImpl;

public class LoginAction implements Action {


	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");

		System.out.println("�α����ϱ� action id="+id+"��й�ȣ="+pass);
		MemberDto memberDto= MemberServiceImpl.getInstance().login(id, pass);
		
		
		System.out.println("�α��� �׼ǿ��� �����Ƽ��"+memberDto);
		
		HttpSession session=request.getSession();
		session.setAttribute("userInfo", memberDto);
		
		return memberDto==null? "/login/fail.jsp?" :"/login/success.jsp?";
	}

}
