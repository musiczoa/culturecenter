package com.kitri.board.qna.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kitri.board.action.Action;
import com.kitri.board.model.*;
import com.kitri.board.service.QnaService;
import com.kitri.board.service.QnaServiceImpl;
import com.kitri.member.model.MemberDto;
import com.kitri.util.StringCheck;

public class ViewAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		int seq = StringCheck.nullToZero(request.getParameter("seq"));
		if(seq!=0){
			HttpSession session = request.getSession();
			String id = ((MemberDto)session.getAttribute("userInfo")).getId();
			QnaDto reboardDto = QnaServiceImpl.getInstance().getArticle(seq, id);
			request.setAttribute("viewArticle", reboardDto);
		}
		return "/reboard/view.jsp?";
	}

}