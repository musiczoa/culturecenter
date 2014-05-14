package com.kitri.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.action.Action;
import com.kitri.member.service.MemberServiceImpl;
import com.kitri.util.Encoder;
import com.kitri.util.UrlFormat;

public class SearchAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		
		
		String nickname = Encoder.isoToEuc(request.getParameter("nickname"));// ���� ���� ���̵� �޾ƿ���
		
		System.out.println("�˻���:" + nickname);
		
		int cnt =MemberServiceImpl.getInstance().nicknameCheck(nickname);// ���񽺿� ���̵� �����ؼ� �ִ��� ������ �Ǵ��ؾ���!
//		path = "/join/idcheck.jsp?id=" + id + "&cnt=" + cnt;
		return "/join/nickcheck.jsp?nickname="+UrlFormat.eucFormat(nickname)+"&cnt="+cnt;
	}

}
