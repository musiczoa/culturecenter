package com.kitri.board.reboard.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kitri.board.action.Action;
import com.kitri.board.model.ReboardDto;
import com.kitri.board.service.ReboardServiceImpl;
import com.kitri.member.dto.MemberDto;
import com.kitri.util.StringCheck;

public class ReplyAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		ReboardDto reboardDto = new ReboardDto();
		reboardDto.setSubject(request.getParameter("subject"));
		reboardDto.setContent(request.getParameter("content"));
		reboardDto.setBcode(StringCheck.nullToZero(request.getParameter("bcode")));
		reboardDto.setRef(StringCheck.nullToZero(request.getParameter("ref")));
		reboardDto.setLev(StringCheck.nullToZero(request.getParameter("lev")));
		reboardDto.setStep(StringCheck.nullToZero(request.getParameter("step")));
		reboardDto.setPseq(StringCheck.nullToZero(request.getParameter("pseq")));
		
		HttpSession session = request.getSession();
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		reboardDto.setNickname(memberDto.getNickname());
		
		int seq = ReboardServiceImpl.getInstance().replyArticle(reboardDto);
		

		return seq == 0? "/community/reboard/writeFail.jsp?":"/community/reboard/writeOk.jsp?seq="+seq+"&";
	}

}
