package com.kitri.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.board.factory.QnaActionFactory;
import com.kitri.util.Constant;
import com.kitri.util.Encoder;
import com.kitri.util.StringCheck;
import com.kitri.util.UrlFormat;

/**
 * Servlet implementation class ReboardController
 */
@WebServlet("/qna")
public class QnaController extends HttpServlet {
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
		String path = "/index.jsp";
		int bcode = StringCheck.nullToZero(request.getParameter("bcode"));
		int pg = StringCheck.nullToOne(request.getParameter("pg"));
		String key = StringCheck.nullToBlank(request.getParameter("key"));
		String word = "POST".equals(request.getMethod()) ? request.getParameter("word") : Encoder.isoToEuc(request.getParameter("word"));
		System.out.println("컨트롤러 word :"+word);
		String queryString="bcode="+bcode+"&pg="+pg+"&key="+key+"&word="+UrlFormat.eucFormat(word);
		System.out.println("컨트롤러 queryString : "+queryString);
		boolean flag = true;
		if("mvwrite".equals(act)){
			path = "/reboard/write.jsp?"+queryString;
		} else if("newwrite".equals(act)){
			path = QnaActionFactory.getWriteAction().action(request, response);
			path += queryString;
			flag = false;
		} else if("view".equals(act)){
			path = QnaActionFactory.getViewAction().action(request, response);
			path += queryString;
		} else if("list".equals(act)){
			path = QnaActionFactory.getListAction().action(request, response);
			path += queryString;
		} else if("mvreply".equals(act)){
			path = QnaActionFactory.getMvReplyAction().action(request, response);
			path += queryString;
		} else if("replywrite".equals(act)){
			path = QnaActionFactory.getReplyAction().action(request, response);
			path += queryString;
			flag = false;
		} else if("mvmodify".equals(act)){
			path = QnaActionFactory.getMvModifyAction().action(request, response);
			path += queryString;
		} else if("modifywrite".equals(act)){
			path = QnaActionFactory.getModifyAction().action(request, response);
			path += queryString;
			flag = false;
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
