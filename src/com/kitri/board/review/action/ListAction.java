package com.kitri.board.review.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.board.action.Action;
import com.kitri.board.model.ReviewDto;
import com.kitri.board.service.ReviewServiceImpl;
import com.kitri.util.*;

public class ListAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		int bcode = StringCheck.nullToZero(request.getParameter("bcode"));
		int pg = StringCheck.nullToOne(request.getParameter("pg"));
		String key = StringCheck.nullToBlank(request.getParameter("key"));
		String word = Encoder.isoToEuc(request.getParameter("word"));
		 
		List<ReviewDto> list = ReviewServiceImpl.getInstance().listArticle(bcode, pg, key, word);
		request.setAttribute("listArticle", list);
		System.out.println("±Û°¹¼ö : " + list.size());
		
		PageNavigation pageNavi = ReviewServiceImpl.getInstance().makePageNavi(bcode, pg, key, word);
		pageNavi.setRoot(request.getContextPath());
		pageNavi.setNavigator();
		request.setAttribute("pageNavi", pageNavi);
		
		return "/community/review/list.jsp?";
	}

}
