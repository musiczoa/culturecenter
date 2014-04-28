package com.kitri.board.admin.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.board.action.Action;
import com.kitri.board.admin.service.BoardAdminServiceImpl;
import com.kitri.board.model.BoardListDto;

public class BoardListAction implements Action {

	@Override
	public String action(HttpServletRequest request, HttpServletResponse reponse) {
		List<BoardListDto> blist = BoardAdminServiceImpl.getInstance().boardList();
		request.setAttribute("boardList", blist);
		return "/badmin/boardlist.jsp";
	}
}
