package com.kitri.board.guestbook.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kitri.action.Action;
import com.kitri.board.model.GuestBookDto;
import com.kitri.board.service.GuestBookServiceImpl;
import com.kitri.member.dto.MemberDto;
import com.kitri.util.StringCheck;

public class ModifyAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {

		GuestBookDto guestbookDto = new GuestBookDto();

		guestbookDto.setContent(request.getParameter("content"));
		guestbookDto.setBcode(StringCheck.nullToZero(request.getParameter("bcode")));
		guestbookDto.setSeq(StringCheck.nullToZero(request.getParameter("seq")));
		System.out.println("¼öÁ¤ seq== "+ StringCheck.nullToZero(request.getParameter("seq")));
//		System.out.println("¼öÁ¤ ÄÁÅÙÃ÷ : " + request.getParameter("content"));

		HttpSession session = request.getSession();
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		guestbookDto.setNickname(memberDto.getNickname());
//		guestbookDto.setId(memberDto.getId1());
//		guestbookDto.setPass(memberDto.getPass1());

		int seq = GuestBookServiceImpl.getInstance().modifyNotice(guestbookDto);

		return seq == 0 ? "/community/guestbook/guestbookFail.jsp?": "/community/guestbook/guestbookOk.jsp?seq=" + seq + "&";
	}

}
