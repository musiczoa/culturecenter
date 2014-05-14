package com.kitri.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kitri.member.dto.MemberDto;
import com.kitri.member.factory.MemberFactory;
import com.kitri.member.service.MemberService;
import com.kitri.member.service.MemberServiceImpl;

import com.kitri.util.Encoder;

@WebServlet("/member")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

//	private MemberService service;
//
//	public void init() {
//		service = new MemberServiceImpl();
//	} // 아래 중복체크에서 사용할 id 서비스 객체 형성
//	
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException { // 가입!
		request.setCharacterEncoding("EUC-KR");
		execute(request, response);
	}

	private void execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String root = request.getContextPath();
		String path = "/index.jsp";
		String act = request.getParameter("act");

//		String id=request.getParameter("id");
//		String pass=request.getParameter("pass");
		
		boolean flag = true;

		if ("mvjoin".equals(act)) {
			
		path = "/join/member.jsp";
			
	
		} else if ("login".equals(act)) {
			
		path=MemberFactory.getLoginAction().action(request, response);
			
		} else if ("mvnick".equals(act)) {
			path = "/join/nickcheck.jsp";
			
		}else if("nicksearch".equals(act)){
			
		path=MemberFactory.getSearchAction().action(request, response);
		
		} else if("register".equals(act)){
		path=MemberFactory.getJoinAction().action(request, response);
		
		System.out.println(path);
		
		} else if("mvjoin".equals(act)){
			
		}

		if (flag)
			response.sendRedirect(root + path); // 단순이동
		else {
			RequestDispatcher disp = request.getRequestDispatcher(path); // 무엇인가를
																			// 가지고
																			// 갈때~
			disp.forward(request, response);
		}
	}

}
