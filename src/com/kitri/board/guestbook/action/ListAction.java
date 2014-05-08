package com.kitri.board.guestbook.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.action.Action;
import com.kitri.board.model.GuestBookDto;
import com.kitri.board.service.GuestBookServiceImpl;
import com.kitri.util.PageNavigation;
import com.kitri.util.StringCheck;

public class ListAction implements Action {
	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		int bcode = StringCheck.nullToZero(request.getParameter("bcode"));
		int pg = StringCheck.nullToOne(request.getParameter("pg"));
		
		
		System.out.println(bcode+"/"+pg);
		
		List<GuestBookDto> list = GuestBookServiceImpl.getInstance().listGuest(bcode, pg);
		
		request.setAttribute("listArticle", list);
		
//		PageNavigation pageNavi = GuestBookServiceImpl.getInstance().makePageNavi(bcode, pg); 
//		pageNavi.setRoot(request.getContextPath());
//		pageNavi.setNavigator();
//		request.setAttribute("pageNavi", pageNavi);
		return "/community/guestbook/guestbooklist.jsp?";

	}

}
