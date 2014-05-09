package com.kitri.board.reboard.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.board.action.Action;
import com.kitri.board.model.ReboardDto;
import com.kitri.board.service.ReboardServiceImpl;
import com.kitri.util.Encoder;
import com.kitri.util.PageNavigation;
import com.kitri.util.StringCheck;

public class ListAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println("액션까지 들어옴");
		int bcode = StringCheck.nullToZero(request.getParameter("bcode"));
		int pg = StringCheck.nullToOne(request.getParameter("pg"));
		String key = StringCheck.nullToBlank(request.getParameter("key"));
		String word = Encoder.isoToEuc(request.getParameter("word"));
		
		List<ReboardDto> list = ReboardServiceImpl.getInstance().listArticle(bcode, pg, key, word);
		System.out.println("액션에서 list사이즈"+list.size());
		request.setAttribute("listArticle", list);
		
		PageNavigation pageNavi = ReboardServiceImpl.getInstance().makePageNavi(bcode, pg, key, word);
		pageNavi.setRoot(request.getContextPath());
		pageNavi.setNavigator();
		request.setAttribute("pageNavi", pageNavi);
		
		return "/community/reboard/list.jsp?";
	}

}
