package com.kitri.board.review.action;

import javax.servlet.http.*;

import com.kitri.board.action.Action;
import com.kitri.board.model.ReviewDto;
import com.kitri.board.service.ReviewServiceImpl;
import com.kitri.member.dto.MemberDto;
import com.kitri.util.StringCheck;

public class WriteAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		
		ReviewDto reboardDto = new ReviewDto();
		reboardDto.setSubject(request.getParameter("subject"));
		reboardDto.setContent(request.getParameter("content"));
		reboardDto.setBcode(StringCheck.nullToZero(request.getParameter("bcode")));
		
		HttpSession session = request.getSession();
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		reboardDto.setName(memberDto.getName());
		reboardDto.setId(memberDto.getId1() + "@" + memberDto.getId2());
		
		int seq = ReviewServiceImpl.getInstance().writeArticle(reboardDto);
		
		return seq == 0 ? "/review/writeFail.jsp?" : "/review/writeOk.jsp?seq=" + seq + "&";
	}

}
