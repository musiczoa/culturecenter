package com.kitri.board.reboard.action;

import javax.servlet.http.*;

import com.kitri.board.action.Action;
import com.kitri.board.model.ReboardDto;
import com.kitri.board.service.ReboardServiceImpl;
import com.kitri.member.model.MemberDto;
import com.kitri.util.StringCheck;

public class ViewAction implements Action {

	@Override
	public String action(HttpServletRequest request, HttpServletResponse reponse) {
		int seq = StringCheck.nullToZero(request.getParameter("seq"));
		if(seq!=0){
			HttpSession session = request.getSession();
			String id = ((MemberDto)session.getAttribute("userInfo")).getId();
			ReboardDto reboardDto = ReboardServiceImpl.getInstance().getArticle(seq, id);
			request.setAttribute("viewArticle", reboardDto);
		}
		return "/reboard/view.jsp?";
	}

}
