package com.kitri.board.reboard.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.board.action.Action;
import com.kitri.board.model.ReboardDto;
import com.kitri.board.service.ReboardServiceImpl;
import com.kitri.util.StringCheck;

public class ListAction implements Action {

	@Override
	public String action(HttpServletRequest request, HttpServletResponse reponse) {
		int bcode = StringCheck.nullToZero(request.getParameter("bcode"));
		int pg = StringCheck.nullToOne(request.getParameter("pg"));
		String key = null;
		String word = null;
		List<ReboardDto> list = ReboardServiceImpl.getInstance().listArticle(bcode, pg, key, word);
		request.setAttribute("listArticle", list);
//		System.out.println("±Û°¹¼ö : "+list.size());
		return "/reboard/list.jsp?";
	}

}
