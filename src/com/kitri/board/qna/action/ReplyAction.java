package com.kitri.board.qna.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kitri.board.action.Action;
import com.kitri.board.model.QnaDto;
import com.kitri.board.service.QnaServiceImpl;
import com.kitri.member.model.MemberDto;
import com.kitri.util.StringCheck;

public class ReplyAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		QnaDto reboardDto = new QnaDto();
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
		reboardDto.setId(memberDto.getId());
		reboardDto.setEmail(memberDto.getEmail1() + "@" + memberDto.getEmail2());
		
		int seq = QnaServiceImpl.getInstance().replyArticle(reboardDto);
		

		return seq == 0? "/reboard/writeFail.jsp?":"/reboard/writeOk.jsp?seq="+seq+"&";
	}

}
