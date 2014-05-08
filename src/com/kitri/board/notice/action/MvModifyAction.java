package com.kitri.board.notice.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.board.action.Action;
import com.kitri.board.model.NoticeDto;
import com.kitri.board.service.NoticeServiceImpl;
import com.kitri.util.StringCheck;

public class MvModifyAction implements Action {

	@Override
	public String action(HttpServletRequest request, HttpServletResponse response) {
		int seq = StringCheck.nullToZero(request.getParameter("seq"));
		if(seq != 0) {
			NoticeDto noticeDto = NoticeServiceImpl.getInstance().getNotice(seq, null);
			request.setAttribute("parentNotice", noticeDto);
		}
		
		return "/community/notice/modify.jsp?";
	}

}
