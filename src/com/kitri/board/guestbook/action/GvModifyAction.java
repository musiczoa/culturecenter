package com.kitri.board.guestbook.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.action.Action;
import com.kitri.board.model.GuestBookDto;
import com.kitri.board.service.GuestBookServiceImpl;
import com.kitri.util.StringCheck;

public class GvModifyAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		int seq=StringCheck.nullToZero(request.getParameter("seq"));
		if(seq != 0) {
			GuestBookDto guestbookDto = GuestBookServiceImpl.getInstance().getGuest(seq, null);
			request.setAttribute("parentGuest", guestbookDto);
		}
		
		return "/community/guestbook/guestbookmodify.jsp?";
	}

}

