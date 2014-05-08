package com.kitri.board.notice.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.board.action.Action;
import com.kitri.board.factory.NoticeActionFactory;
import com.kitri.board.model.NoticeDto;
import com.kitri.board.service.NoticeServiceImpl;
import com.kitri.util.Encoder;
import com.kitri.util.PageNavigation;
import com.kitri.util.StringCheck;

public class ListAction implements Action {

	@Override
	public String action(HttpServletRequest request, HttpServletResponse response) {
		int bcode = StringCheck.nullToZero(request.getParameter("bcode"));
		int pg = StringCheck.nullToOne(request.getParameter("pg"));
		String key = StringCheck.nullToBlank(request.getParameter("key"));
		String word = Encoder.isoToEuc(request.getParameter("word"));
		
		System.out.println(bcode+"/"+pg);
		List<NoticeDto> list = NoticeServiceImpl.getInstance().listNotice(bcode, pg, key, word);
		
		request.setAttribute("listNotice", list);
		System.out.println("리스트 액션에서 페이지:"+pg);
		
		PageNavigation pageNavi = NoticeServiceImpl.getInstance().makePageNavi(bcode, pg, key, word); 
		
		pageNavi.setRoot(request.getContextPath());
		pageNavi.setNavigator();
		request.setAttribute("pageNavi", pageNavi);
		
		return "/community/notice/notice.jsp?";
	}

}
