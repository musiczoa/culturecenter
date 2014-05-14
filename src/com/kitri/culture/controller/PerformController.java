package com.kitri.culture.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.culture.factory.PerActionFactory;
import com.kitri.util.Constant;
import com.kitri.util.Encoder;
import com.kitri.util.StringCheck;
import com.kitri.util.UrlFormat;


@WebServlet("/perform")
public class PerformController extends HttpServlet {
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
		System.out.println("컨트롤러에서 맨위 씨타입 : "+request.getParameter("ctype"));
		int ctype = StringCheck.nullToZero(request.getParameter("ctype"));
		int pg = StringCheck.nullToOne(request.getParameter("pg"));
		int seq = StringCheck.nullToZero(request.getParameter("seq"));
		String word = Encoder.isoToEuc(request.getParameter("word"));
		
		System.out.println("컨트롤에서 : "+pg+"시퀀스 : "+seq+"씨타입 : "+ctype);
		
		String queryString = "&ctype=" + ctype + "&pg=" + pg + "&seq=" + seq + "&word=" + UrlFormat.eucFormat(word);;
		String path = "/index.jsp";
		boolean flag = true;
		if("perList".equals(act)) {
			path = PerActionFactory.getListAction().action(request, response);
			path += queryString;				
			
		} else if("performInfo".equals(act)) {
			path = PerActionFactory.getInfoAction().action(request, response);
			path += queryString;
			
		}else if("".equals(act)) {
			
		}else if("".equals(act)) {
			
		}
		
		if(flag) {
			RequestDispatcher disp = request.getRequestDispatcher(path);
			disp.forward(request, response);
		} else {
			response.sendRedirect(root + path);
		}
		
	}

}
