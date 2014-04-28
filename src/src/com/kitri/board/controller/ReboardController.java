package com.kitri.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.factory.ReboardActionFactory;
import com.kitri.util.Constant;
import com.kitri.util.StringCheck;

@WebServlet("/reboard")
public class ReboardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(Constant.MAIN_CHAR);
		execute(request, response);
	}

	private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String root = request.getContextPath();
		
		String act = request.getParameter("act");
		int bcode = StringCheck.nullToZero(request.getParameter("bcode"));
		int pg = StringCheck.nullToOne(request.getParameter("pg")); // 0페이지는 없으니까 무조건 1로!
		
		String queryString = "bcode=" + bcode + "&pg=" + pg;
		
		String path = "/index.jsp";
		boolean flag = true; // 디폴트가 트루! 포워드!
		if("mvwrite".equals(act)){
			path = "/reboard/write.jsp?"+queryString;
		} else if("newwrite".equals(act)){
			path = ReboardActionFactory.getWriteAction().action(request, response);
			path += queryString;
			flag = false;
		} else if("view".equals(act)){
			path = ReboardActionFactory.getViewAction().action(request, response);
			path += queryString;
		} else if("list".equals(act)){
			path = ReboardActionFactory.getListAction().action(request, response);
			path += queryString;
		} else if("".equals(act)){
			
		} else if("".equals(act)){
			
		} else if("".equals(act)){
			
		}
		
		if(flag){
			RequestDispatcher disp = request.getRequestDispatcher(path);
			disp.forward(request, response);
		} else{
			response.sendRedirect(root + path);
		}		
	}
}
