package com.kitri.board.review.action;

import javax.servlet.http.*;

import com.kitri.board.action.Action;
import com.kitri.board.model.ReviewDto;
import com.kitri.board.service.ReviewServiceImpl;
import com.kitri.member.dto.MemberDto;
import com.kitri.util.StringCheck;

public class ViewAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		int seq = StringCheck.nullToZero(request.getParameter("seq"));
		if(seq != 0) {
			HttpSession session = request.getSession();
			MemberDto memberDto = (MemberDto) session.getAttribute("userInfo");
			String id = null;
			
				
			ReviewDto reboardDto = ReviewServiceImpl.getInstance().getArticle(seq);
			request.setAttribute("viewArticle", reboardDto);
		}
		return "/community/review/view.jsp?";
	}

}
