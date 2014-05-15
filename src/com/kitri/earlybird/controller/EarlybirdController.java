package com.kitri.earlybird.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.earlybird.factory.EarlybirdFactory;
import com.kitri.util.Constant;
import com.kitri.util.Encoder;
import com.kitri.util.StringCheck;
import com.kitri.util.UrlFormat;

/**
 * Servlet implementation class EarlybirdController
 */
@WebServlet("/EarlybirdController")
public class EarlybirdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(Constant.MAIN_CHAR);
		execute(request,response);
	}
	
	protected void execute (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String root = request.getContextPath();
		String act = request.getParameter("act");
		String path = "/earlybird/main.jsp";
		int bcode = StringCheck.nullToZero(request.getParameter("bcode"));
		int pg = StringCheck.nullToOne(request.getParameter("pg"));
		String key = StringCheck.nullToBlank(request.getParameter("key"));
		String word = "POST".equals(request.getMethod()) ? request.getParameter("word") : Encoder.isoToEuc(request.getParameter("word"));
		System.out.println("컨트롤러 word :"+word);
		String queryString="bcode="+bcode+"&pg="+pg+"&key="+key+"&word="+UrlFormat.eucFormat(word);
		System.out.println("컨트롤러 queryString : "+queryString);
		boolean flag = true;
		if("mvcreatelist".equals(act)){
			path = EarlybirdFactory.getListAction().action(request, response);
			path += queryString;
		} else if("".equals(act)){
			
		} else if("".equals(act)){
			
		} else if("".equals(act)){
			
		} else if("".equals(act)){
			
		} else if("".equals(act)){
			
		}

		if(flag){
			RequestDispatcher disp = request.getRequestDispatcher(path);
			disp.forward(request, response);
		}else{
			response.sendRedirect(root+path);
		}
	}
}
