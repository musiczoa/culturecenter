package com.kitri.board.qna.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.action.Action;
import com.kitri.board.model.QnaDto;
import com.kitri.board.service.QnaServiceImpl;
import com.kitri.util.StringCheck;

public class ListAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		int pg = StringCheck.nullToZero(request.getParameter("pg"));
		List<QnaDto> list = QnaServiceImpl.getInstance().listArticle(pg);
		request.setAttribute("list", list);
		
		return "/qna/list.jsp";
	}

}
