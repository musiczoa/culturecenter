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
		
		
		String nickname = Encoder.isoToEuc(request.getParameter("nickname"));// 제일 먼저 아이디를 받아오기
		
		System.out.println("검색중:" + nickname);
		
		int cnt =MemberServiceImpl.getInstance().nicknameCheck(nickname);// 서비스에 아이디 전달해서 있는지 없는지 판단해야함!
//		path = "/join/idcheck.jsp?id=" + id + "&cnt=" + cnt;
		return "/join/nickcheck.jsp?nickname="+UrlFormat.eucFormat(nickname)+"&cnt="+cnt;
	}

}
