package com.kitri.board.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.factory.BoardAdminActionFactory;
import com.kitri.util.Constant;

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

	private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String root = request.getContextPath();
		String act = request.getParameter("act");
		String path = "/index.jsp";
		boolean flag = true;
//		모든일은 이제 액션이 다할거야!!
//		어디로가라! 포워드로 갈건지 리다이렉트로 갈건지만 정해줄거여 여기선
		if("boardlist".equals(act)){
			path = BoardAdminActionFactory.getBoardListAction().action(request, response);
			
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
