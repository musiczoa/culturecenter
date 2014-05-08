package com.kitri.board.qna.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kitri.board.action.Action;
import com.kitri.board.model.QnaDto;
import com.kitri.board.service.QnaService;
import com.kitri.board.service.QnaServiceImpl;
import com.kitri.member.model.MemberDto;
import com.kitri.util.StringCheck;

public class WriteAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		QnaDto reboardDto = new QnaDto();
		String path = "";
		reboardDto.setSubject(request.getParameter("subject"));
		reboardDto.setContent(request.getParameter("content"));
		reboardDto.setBcode(StringCheck.nullToZero(request
				.getParameter("bcode")));
		HttpSession session = request.getSession();
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		reboardDto.setName(memberDto.getName());
		reboardDto.setId(memberDto.getId());
		reboardDto.setEmail(memberDto.getEmail1() + "@" + memberDto.getEmail2());
		
		int seq = QnaServiceImpl.getInstance().writeArticle(reboardDto);
		

		return seq == 0? "/reboard/writeFail.jsp?":"/reboard/writeOk.jsp?seq="+seq+"&";
	}

}
