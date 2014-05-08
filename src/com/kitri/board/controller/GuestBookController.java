package com.kitri.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.board.factory.GuestBookActionFactory;
import com.kitri.util.Constant;
import com.kitri.util.StringCheck;

@WebServlet("/guest")
public class GuestBookController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}

	protected void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(Constant.MAIN_CHAR);
		execute(request, response);
	}

	protected void execute(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		String root = request.getContextPath();

		String act = request.getParameter("act");
		
		int bcode = StringCheck.nullToZero(request.getParameter("bcode"));
		
		int pg = StringCheck.nullToOne(request.getParameter("pg"));
		
		String queryString ="bcode="+bcode+"&pg="+pg;
		System.out.println(queryString);
		
		String path = "/index.jsp";
		
		boolean flag = true;
		
		if("gbwrite".equals(act)){
			path = GuestBookActionFactory.getWriteAction().action(request, response);
			path += queryString;
			
		} else if ("list".equals(act)) {
			path = GuestBookActionFactory.getListAction().action(request, response);
			path += queryString;
		} else if ("".equals(act)) {

		} else if("".equals(act)){
			
		}

		if (flag) {
			RequestDispatcher disp = request.getRequestDispatcher(path);
			disp.forward(request, response);
		} else {
			response.sendRedirect(root + path);
		}
	}
}
