package com.kitri.board.reboard.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kitri.board.action.Action;
import com.kitri.board.model.ReboardDto;
import com.kitri.board.service.ReboardService;
import com.kitri.board.service.ReboardServiceImpl;
import com.kitri.member.dto.MemberDto;
import com.kitri.util.StringCheck;

public class WriteAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		ReboardDto reboardDto = new ReboardDto();
		String path = "";
		reboardDto.setSubject(request.getParameter("subject"));
		reboardDto.setContent(request.getParameter("content"));
		reboardDto.setBcode(StringCheck.nullToZero(request
				.getParameter("bcode")));
		HttpSession session = request.getSession();
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		reboardDto.setNickname(memberDto.getNickname());
		
		int seq = ReboardServiceImpl.getInstance().writeArticle(reboardDto);
		

		return seq == 0? "/community/reboard/writeFail.jsp?":"/community/reboard/writeOk.jsp?seq="+seq+"&";
	}

}
