package com.kitri.board.notice.action;

import javax.servlet.http.*;

import com.kitri.board.action.Action;
import com.kitri.board.model.NoticeDto;
import com.kitri.board.service.NoticeServiceImpl;
import com.kitri.member.model.MemberDto;
import com.kitri.util.StringCheck;


public class ViewAction implements Action {

	@Override
	public String action(HttpServletRequest request, HttpServletResponse response) {
		int seq = StringCheck.nullToZero(request.getParameter("seq"));
		if(seq!=0){
			HttpSession session = request.getSession();
			String id = ((MemberDto)session.getAttribute("userInfo")).getId();
			System.out.println(seq+id);
			NoticeDto noticeDto = NoticeServiceImpl.getInstance().getNotice(seq, id);
			request.setAttribute("viewArticle", noticeDto);			
		}
		
		return "/community/notice/view.jsp?";
	}

}
