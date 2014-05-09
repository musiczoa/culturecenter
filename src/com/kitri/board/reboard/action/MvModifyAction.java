package com.kitri.board.reboard.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.board.action.Action;
import com.kitri.board.model.ReboardDto;
import com.kitri.board.service.ReboardServiceImpl;
import com.kitri.util.StringCheck;

public class MvModifyAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
	int seq = StringCheck.nullToZero(request.getParameter("seq"));
		
		if(seq!=0){
		ReboardDto reboardDto = ReboardServiceImpl.getInstance().getArticle(seq, null);
		request.setAttribute("parentArticle", reboardDto);
		}
		return "/community/reboard/modify.jsp?seq="+seq+"&";
	}

}
