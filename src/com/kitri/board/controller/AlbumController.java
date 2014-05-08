package com.kitri.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.util.Constant;

/**
 * Servlet implementation class AlbumController
 */
@WebServlet("/album")
public class AlbumController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		execute(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding(Constant.MAIN_CHAR);
		execute(request, response);
	}

	private void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String root = request.getContextPath();
		
		String act = request.getParameter("act");
		String path = "/index.jsp";
		boolean flag = true;
		if("".equals(act)){
			
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
