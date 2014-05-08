package com.kitri.board.notice.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kitri.board.action.Action;
import com.kitri.board.model.NoticeDto;
import com.kitri.board.service.NoticeServiceImpl;
import com.kitri.member.dto.MemberDto;
import com.kitri.util.StringCheck;

public class ModifyAction implements Action {

	@Override
	public String action(HttpServletRequest request, HttpServletResponse response) {
		NoticeDto noticeDto = new NoticeDto();
		noticeDto.setSubject(request.getParameter("subject"));
		noticeDto.setContent(request.getParameter("content"));
		noticeDto.setBcode(StringCheck.nullToZero(request.getParameter("bcode")));
		noticeDto.setSeq(StringCheck.nullToZero(request.getParameter("seq")));	
		System.out.println("모디파이 액션에서 시퀀스 : "+StringCheck.nullToZero(request.getParameter("seq")));
		System.out.println("모디파이 액션에서 제목 : " + request.getParameter("subject"));
				
		HttpSession session = request.getSession();
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		noticeDto.setNickname(memberDto.getNickname());
		noticeDto.setId(memberDto.getId1());
		noticeDto.setPass(memberDto.getPass1());
		
		int seq = NoticeServiceImpl.getInstance().modifyNotice(noticeDto); 
		
		return seq == 0?"/community/notice/writeFail.jsp?" : "/community/notice/writeOk.jsp?seq="+seq+"&";
	}

}
