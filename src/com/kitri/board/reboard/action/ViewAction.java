package com.kitri.board.reboard.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kitri.action.Action;
import com.kitri.board.model.*;
import com.kitri.board.service.ReboardService;
import com.kitri.board.service.ReboardServiceImpl;
import com.kitri.member.dto.MemberDto;
import com.kitri.util.StringCheck;

public class ViewAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		int seq = StringCheck.nullToZero(request.getParameter("seq"));
		if(seq!=0){
			HttpSession session = request.getSession();
			String nickname=null;
			if((MemberDto)session.getAttribute("userInfo")!=null){
			nickname = ((MemberDto)session.getAttribute("userInfo")).getNickname();
			}
			System.out.println(nickname+"닉네임에 들어있는값");
			ReboardDto reboardDto = ReboardServiceImpl.getInstance().getArticle(seq, nickname);
			request.setAttribute("viewArticle", reboardDto);
			if(reboardDto!=null)
				System.out.println("리보드디티오는 차있다.");
		}
		return "/community/reboard/view.jsp?";
	}

}