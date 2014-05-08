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
		System.out.println("�������� ����Ʈ���� ���� �۹�ȣ:"+seq);
		if(seq!=0){
			HttpSession session = request.getSession();
			String id = ((MemberDto)session.getAttribute("userInfo")).getId1();
			System.out.println(seq+id);
			
			NoticeDto noticeDto = NoticeServiceImpl.getInstance().getNotice(seq, id);
			
			System.out.println("�信 ����������"+noticeDto.getNickname());
			request.setAttribute("viewArticle", noticeDto);			
		}		
		return "/community/notice/view.jsp?";
	}
}
