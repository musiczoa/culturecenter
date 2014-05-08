//package com.kitri.board.controller;
//
//import java.io.IOException;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.kitri.factory.ReboardActionFactory;
//import com.kitri.util.*;
//
//@WebServlet("/reboard")
//public class ReboardController extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//       
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		execute(request, response);
//	}
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding(Constant.MAIN_CHAR);
////		execute(request, response);
//	}
//
//	private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
//		String root = request.getContextPath();
//		
//		String act = request.getParameter("act");
//		int bcode = StringCheck.nullToZero(request.getParameter("bcode"));
//		int pg = StringCheck.nullToOne(request.getParameter("pg")); // 0페이지는 없으니까 무조건 1로!
//		String key = StringCheck.nullToBlank(request.getParameter("key"));
//		String word = "POST".equals( request.getMethod()) ? request.getParameter("word") : Encoder.isoToEuc(request.getParameter("word"));
//		
//		String queryString = "bcode=" + bcode + "&pg=" + pg + "&key=" + key + "&word=" + UrlFormat.eucFormat(word);
//		System.out.println("검색어 : "+word);
//		
//		String path = "/index.jsp";
//		boolean flag = true; // 디폴트가 트루! 포워드!
//		if("mvwrite".equals(act)){
//			path = "/reboard/write.jsp?"+queryString;
//		} else if("newwrite".equals(act)){
//			path = ReboardActionFactory.getWriteAction().action(request, response);
//			path += queryString;
//			flag = false;
//		} else if("view".equals(act)){
//			path = ReboardActionFactory.getViewAction().action(request, response);
//			path += queryString;
//		} else if("list".equals(act)){
//			path = ReboardActionFactory.getListAction().action(request, response);
//			path += queryString;
//		} else if("mvreply".equals(act)){
//			//원글정보가 필요하니까 mvwrite처럼 바로 패쓰 써주는거 안돼
//			path = ReboardActionFactory.getMvReplyAction().action(request, response);
//			// 얘는 viewAction이랑 똑같은거나 다름없어
//			path += queryString;
//		} else if("replywrite".equals(act)){
//			path = ReboardActionFactory.getReplyAction().action(request, response);
//			path += queryString;
//			flag = false;
//		} else if("".equals(act)){
//			
//		}
//		
//		if(flag){
//			RequestDispatcher disp = request.getRequestDispatcher(path);
//			disp.forward(request, response);
//		} else{
//			response.sendRedirect(root + path);
//		}		
//	}
//}
