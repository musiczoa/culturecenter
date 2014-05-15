package com.kitri.board.review.action;

import javax.servlet.http.*;

import com.kitri.board.action.Action;
import com.kitri.board.model.ReviewDto;
import com.kitri.board.service.ReviewServiceImpl;
import com.kitri.member.dto.MemberDto;
import com.kitri.util.StringCheck;

public class ReplyAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		ReviewDto reboardDto = new ReviewDto();
		reboardDto.setSubject(request.getParameter("subject"));
		reboardDto.setContent(request.getParameter("content"));
		reboardDto.setBcode(StringCheck.nullToZero(request.getParameter("bcode")));
		
		reboardDto.setRef(StringCheck.nullToZero(request.getParameter("ref")));
		reboardDto.setLev(StringCheck.nullToZero(request.getParameter("lev")));
		reboardDto.setStep(StringCheck.nullToZero(request.getParameter("step")));
		reboardDto.setPseq(StringCheck.nullToZero(request.getParameter("pseq")));
		
		HttpSession session = request.getSession();
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		reboardDto.setName(memberDto.getName());
		reboardDto.setId(memberDto.getId1() + "@" + memberDto.getId2());
		
		int seq = ReviewServiceImpl.getInstance().replyArticle(reboardDto);
		
		return seq == 0 ? "/review/writeFail.jsp?" : "/review/writeOk.jsp?seq=" + seq + "&";
	}

}
