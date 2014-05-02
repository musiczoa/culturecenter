package com.kitri.board.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.board.factory.NoticeActionFactory;
import com.kitri.util.Constant;
import com.kitri.util.StringCheck;

@WebServlet("/badmin")
public class BoardAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(Constant.MAIN_CHAR);
		execute(request, response);		
	}

	protected void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String root = request.getContextPath();
		
		int bcode = StringCheck.nullToZero(request.getParameter("bcode"));//null오류 방지할려고???
		int pg = StringCheck.nullToOne(request.getParameter("pg"));
		
		String queryString = "bcode="+bcode+"&pg="+pg;
		
		String act = request.getParameter("act");
		String path = "/index.jsp";//기본적으로 인덱스로 보내기 위해서.
		boolean flag = true;
		if("boardlist".equals(act)){//index로 들어왔을때			
			
		}else if("".equals(act)){
			
		}else if("".equals(act)){
			
		}else if("".equals(act)){
			
		}
		
		///////////////////////////////////////////////////////////////////////
		if(flag){
			RequestDispatcher disp = request.getRequestDispatcher(path);
			disp.forward(request, response);
		}else{
			response.sendRedirect(root+path);
		}
	}

}
