package com.kitri.board.qna.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.board.action.Action;
import com.kitri.board.model.QnaDto;
import com.kitri.board.service.QnaServiceImpl;
import com.kitri.util.Encoder;
import com.kitri.util.PageNavigation;
import com.kitri.util.StringCheck;

public class ListAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		int bcode = StringCheck.nullToZero(request.getParameter("bcode"));
		int pg = StringCheck.nullToOne(request.getParameter("pg"));
		String key = StringCheck.nullToBlank(request.getParameter("key"));
		String word = Encoder.isoToEuc(request.getParameter("word"));
		
		List<QnaDto> list = QnaServiceImpl.getInstance().listArticle(bcode, pg, key, word);
		
		request.setAttribute("listArticle", list);
		
		PageNavigation pageNavi = QnaServiceImpl.getInstance().makePageNavi(bcode, pg, key, word);
		pageNavi.setRoot(request.getContextPath());
		pageNavi.setNavigator();
		request.setAttribute("pageNavi", pageNavi);
		
		return "/reboard/list.jsp?";
	}

}
