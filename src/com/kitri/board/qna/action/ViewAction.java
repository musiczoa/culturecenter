package com.kitri.board.qna.action;

import javax.servlet.http.*;

import com.kitri.action.Action;



public class ViewAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		
		return "/reboard/view.jsp?";
	}

}
