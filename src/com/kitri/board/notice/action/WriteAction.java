package com.kitri.board.notice.action;

import javax.servlet.http.*;

import com.kitri.board.action.Action;
import com.kitri.board.model.NoticeDto;
import com.kitri.board.service.NoticeServiceImpl;
import com.kitri.member.dto.MemberDto;
import com.kitri.util.StringCheck;

public class WriteAction implements Action {

	@Override
	public String action(HttpServletRequest request,HttpServletResponse response) {
		NoticeDto noticeDto = new NoticeDto();
		
		noticeDto.setSubject(request.getParameter("subject"));
		noticeDto.setContent(request.getParameter("content"));
		noticeDto.setBcode(StringCheck.nullToZero(request.getParameter("bcode")));
		
		HttpSession session = request.getSession();
		
		MemberDto memberDto = (MemberDto)session.getAttribute("userInfo");
		
		noticeDto.setNickname(memberDto.getNickname());
		noticeDto.setId(memberDto.getId1());
		noticeDto.setPass(memberDto.getPass1());
		
		int seq = NoticeServiceImpl.getInstance().writeNotice(noticeDto);
		
		
		
		return seq == 0?"/community/notice/writeFail.jsp?" : "/community/notice/writeOk.jsp?seq="+seq+"&";
	}

}
