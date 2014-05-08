package com.kitri.board.qna.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.board.action.Action;
import com.kitri.board.model.QnaDto;
import com.kitri.board.service.QnaServiceImpl;
import com.kitri.util.StringCheck;

public class MvReplyAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		int seq = StringCheck.nullToZero(request.getParameter("seq"));
		
		if(seq!=0){
		QnaDto reboardDto = QnaServiceImpl.getInstance().getArticle(seq, null);
		request.setAttribute("parentArticle", reboardDto);
		}
		return "/reboard/reply.jsp?";
	}

}
