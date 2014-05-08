package com.kitri.board.qna.action;

import javax.servlet.http.*;

import com.kitri.action.Action;
import com.kitri.board.model.QnaDto;
import com.kitri.board.service.QnaServiceImpl;
import com.kitri.member.model.MemberDto;
import com.kitri.util.StringCheck;



public class DeleteAction implements Action {

	@Override
	public String action(HttpServletRequest request, HttpServletResponse response) {
		
		////////////////////////// 이부분 수정해야돼!!!!!!!! ///////////////////////////////
		
		int seq = StringCheck.nullToZero(request.getParameter("seq"));
		if(seq!=0){
			HttpSession session = request.getSession();
			String id = ((MemberDto)session.getAttribute("userInfo")).getId();
			QnaDto reboardDto = QnaServiceImpl.getInstance().getArticle(seq, id);
			request.setAttribute("viewArticle", reboardDto);
		}
		return "/reboard/view.jsp?";
		
		//////////////////////////// 이부분 수정해야돼!!!!!!!! //////////////////////////
		
	}

}
