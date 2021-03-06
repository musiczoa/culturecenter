package com.kitri.board.notice.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.board.action.Action;
import com.kitri.board.model.NoticeDto;
import com.kitri.board.service.NoticeServiceImpl;
import com.kitri.util.StringCheck;

public class DeleteAction implements Action {

	@Override
	public String action(HttpServletRequest request, HttpServletResponse response) {
		
		NoticeDto noticeDto = new NoticeDto();
		noticeDto.setBcode(StringCheck.nullToZero(request.getParameter("bcode")));
		noticeDto.setSeq(StringCheck.nullToZero(request.getParameter("seq")));	
				
		int cnt = NoticeServiceImpl.getInstance().deleteNotice(noticeDto);
		
		return cnt == 0?"/community/notice/deleteFail.jsp?" : "/community/notice/deleteOk.jsp?";
	}

}
