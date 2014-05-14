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
		System.out.println("뷰 액션에서 얹어온 글번호:"+seq);
		if(seq!=0){
			HttpSession session = request.getSession();
			String id ="";
			if((MemberDto)session.getAttribute("userInfo")==null){
				id = "guest";
			}else{
				id = ((MemberDto)session.getAttribute("userInfo")).getEmail();
			}		
			
//			System.out.println(seq+id);
			
			NoticeDto noticeDto = NoticeServiceImpl.getInstance().getNotice(seq, id);
			
			System.out.println("뷰에 보내기전에 : "+noticeDto.getNickname());
			request.setAttribute("viewArticle", noticeDto);			
		}		
		return "/community/notice/view.jsp?";
	}
}
