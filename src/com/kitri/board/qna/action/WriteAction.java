package com.kitri.board.qna.action;

import javax.servlet.http.*;

import com.kitri.action.Action;
import com.kitri.board.koreankenneth.MemberDto;
import com.kitri.board.model.QnaDto;
import com.kitri.board.service.QnaServiceImpl;


public class WriteAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		QnaDto qnaDto = new QnaDto(); 
		qnaDto.setSubject(request.getParameter("subject"));
		qnaDto.setContent(request.getParameter("content"));
		
		HttpSession session = request.getSession();
		MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
		qnaDto.setNickname(memberDto.getNickname());
		qnaDto.setEmail(memberDto.getEmail());
		
		int seq = QnaServiceImpl.getInstance().writeArticle(qnaDto);
		
		
		
		
		return seq == 0 ? "/qna/writeFail.jsp" : "/qna/writeOk.jsp?seq=" + seq;
	}

}
