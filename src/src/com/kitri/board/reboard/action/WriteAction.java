package com.kitri.board.reboard.action;

import javax.servlet.http.*;

import com.kitri.board.action.Action;
import com.kitri.board.model.ReboardDto;
import com.kitri.board.service.ReboardServiceImpl;
import com.kitri.member.model.MemberDto;
import com.kitri.util.StringCheck;

public class WriteAction implements Action {

	@Override
	public String action(HttpServletRequest request, HttpServletResponse reponse) {
		
		ReboardDto reboardDto = new ReboardDto();
		reboardDto.setSubject(request.getParameter("subject"));
		reboardDto.setContent(request.getParameter("content"));
		reboardDto.setBcode(StringCheck.nullToZero(request.getParameter("bcode")));
		
		HttpSession session = request.getSession();
		MemberDto memberDto = (MemberDto)session.getAttribute("userInfo");
		reboardDto.setName(memberDto.getName());
		reboardDto.setId(memberDto.getId());
		reboardDto.setEmail(memberDto.getEmail1()+"@"+memberDto.getEmail2());
		
		int seq = ReboardServiceImpl.getInstance().writeArticle(reboardDto);
		
		
		return seq == 0 ? "/reboard/writeFail.jsp?" : "/reboard/writeOk.jsp?seq="+seq+"&";
	}
}
