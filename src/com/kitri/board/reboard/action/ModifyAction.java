package com.kitri.board.reboard.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kitri.action.Action;
import com.kitri.board.model.ReboardDto;
import com.kitri.board.service.ReboardServiceImpl;
import com.kitri.util.StringCheck;

public class ModifyAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		ReboardDto reboardDto = new ReboardDto();
		reboardDto.setSeq(StringCheck.nullToZero(request.getParameter("seq")));
		reboardDto.setSubject(request.getParameter("subject"));
		reboardDto.setContent(request.getParameter("content"));
		reboardDto.setBcode(StringCheck.nullToZero(request.getParameter("bcode")));
		
		int seq = ReboardServiceImpl.getInstance().modifyArticle(reboardDto);
		

		return seq == 0? "/community/reboard/writeFail.jsp?":"/community/reboard/writeOk.jsp?seq="+seq+"&";
	}

}
