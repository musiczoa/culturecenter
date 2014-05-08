package com.kitri.board.notice.action;

import javax.servlet.http.*;

import com.kitri.board.action.Action;
import com.kitri.board.model.NoticeDto;
import com.kitri.board.service.NoticeServiceImpl;
import com.kitri.member.dto.MemberDto;
import com.kitri.util.StringCheck;


public class ViewAction implements Action {

	@Override
	public String action(HttpServletRequest request, HttpServletResponse response) {
		int seq = StringCheck.nullToZero(request.getParameter("seq"));
		System.out.println("공지사항 리스트에서 얹어온 글번호:"+seq);
		if(seq!=0){
			HttpSession session = request.getSession();
			String id = ((MemberDto)session.getAttribute("userInfo")).getId1();
			System.out.println(seq+id);
			
			NoticeDto noticeDto = NoticeServiceImpl.getInstance().getNotice(seq, id);
			
			System.out.println("뷰에 보내기전에"+noticeDto.getNickname());
			request.setAttribute("viewArticle", noticeDto);			
		}		
		return "/community/notice/view.jsp?";
	}
}
