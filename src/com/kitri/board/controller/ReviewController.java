package com.kitri.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.board.factory.ReviewActionFactory;
import com.kitri.util.*;


@WebServlet("/rboard")
public class ReviewController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(Constant.MAIN_CHAR);
		execute(request, response);
	}
	
	private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String root = request.getContextPath();
		
		String act = request.getParameter("act");
		int bcode = StringCheck.nullToZero(request.getParameter("bcode"));
		int pg = StringCheck.nullToOne(request.getParameter("pg"));
		String key = StringCheck.nullToBlank(request.getParameter("key"));
		String word = "POST".equals(request.getMethod()) ? request.getParameter("word") : Encoder.isoToEuc(request.getParameter("word"));
		System.out.println("°Ë»ö¾î : " + word);
		
		String queryString = "bcode=" + bcode + "&pg=" + pg + "&key=" + key + "&word=" + UrlFormat.eucFormat(word);
		System.out.println(">>>> " + queryString);
		
		String path = "/index.jsp";
		boolean flag = true;
		if("mvwrite".equals(act)) {
			path = "/community/review/write.jsp?" + queryString;
		} else if("newwrite".equals(act)) {
			path = ReviewActionFactory.getWriteAction().action(request, response);
			path += queryString;
			flag = false;
		} else if("view".equals(act)) {
			path = ReviewActionFactory.getViewAction().action(request, response);
			path += queryString;
		} else if("list".equals(act)) {
			path = ReviewActionFactory.getListAction().action(request, response);
			path += queryString;
		} else if("mvreply".equals(act)) {
//			path = ReviewActionFactory.getMvReplyAction().action(request, response);
//			path += queryString;
		} else if("replywrite".equals(act)) {
			path = ReviewActionFactory.getReplyAction().action(request, response);
			path += queryString;
			flag = false;
		} else if("".equals(act)) {
			
		}
		
		if(flag) {
			RequestDispatcher disp = request.getRequestDispatcher(path);
			disp.forward(request, response);
		} else {
			response.sendRedirect(root + path);
		}
	}

}
