package com.kitri.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.rmi.server.Dispatcher;

import com.kitri.board.factory.NoticeActionFactory;
import com.kitri.util.Constant;
import com.kitri.util.StringCheck;

@WebServlet("/notice")
public class NoticeController extends HttpServlet {
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
		
		String act = request.getParameter("act");
		int bcode = StringCheck.nullToZero(request.getParameter("bcode"));
		int pg = StringCheck.nullToOne(request.getParameter("pg"));
		
		String queryString ="bcode="+bcode+"&pg="+pg;
		
		String path = "/index.jsp";
		boolean flag = true;
		if("mvwrite".equals(act)){
			path = "/community/notice/noticewrite.jsp?"+queryString;
			
		}else if("newwrite".equals(act)){
			path = NoticeActionFactory.getWriteAction().action(request, response);
			path += queryString;
			flag = false;
			
		}else if("view".equals(act)){
			path = NoticeActionFactory.getViewAction().action(request, response);
			path += queryString;
			
		}else if("noticeList".equals(act)){
			path = NoticeActionFactory.getListAction().action(request, response);
			path += queryString;
		}else if("".equals(act)){
			
		}else if("".equals(act)){
			
		}else if("".equals(act)){
			
		}else if("".equals(act)){
			
		}
		
		if(flag){
			RequestDispatcher disp = request.getRequestDispatcher(path);
			disp.forward(request, response);
		}else{
			response.sendRedirect(root+path);
		}
	}

}
