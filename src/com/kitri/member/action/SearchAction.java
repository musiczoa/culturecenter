package com.kitri.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.action.Action;
import com.kitri.member.service.MemberServiceImpl;

public class SearchAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		
		
		String nickname = request.getParameter("nickname");// ���� ���� ���̵� �޾ƿ���
		
		int cnt =MemberServiceImpl.getInstance().nicknameCheck(nickname);// ���񽺿� ���̵� �����ؼ� �ִ��� ������ �Ǵ��ؾ���!
//		path = "/join/idcheck.jsp?id=" + id + "&cnt=" + cnt;
		return "/join/idcheck.jsp?nickname=" + nickname + "&cnt=" + cnt;
	}

}
