package com.kitri.board.review.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.board.action.Action;
import com.kitri.board.model.ReviewDto;
import com.kitri.board.service.ReviewServiceImpl;
import com.kitri.util.StringCheck;

public class MvReplyAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		int seq = StringCheck.nullToZero(request.getParameter("seq"));
		if(seq != 0) {
			ReviewDto reboardDto = ReviewServiceImpl.getInstance().getArticle(seq);
			request.setAttribute("parentArticle", reboardDto);
		}
		return "/review/reply.jsp?";
	}

}
