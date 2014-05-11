package com.kitri.culture.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.action.Action;
import com.kitri.culture.dto.cultureDto;
import com.kitri.culture.service.PerformServiceImpl;
import com.kitri.util.Encoder;
import com.kitri.util.PageNavigation;
import com.kitri.util.StringCheck;

public class PerListAction implements Action {

	@Override
	public String action(HttpServletRequest request, HttpServletResponse response) {
		int ctype = StringCheck.nullToZero(request.getParameter("ctype"));
		int pg = StringCheck.nullToOne(request.getParameter("pg"));
		String word = Encoder.isoToEuc(request.getParameter("word"));
		
		List<cultureDto> list = PerformServiceImpl.getInstance().perList(pg, word);		
		request.setAttribute("listPerform", list);		
		
		PageNavigation pageNavi = PerformServiceImpl.getInstance().makePageNavi(pg, word);
		pageNavi.setRoot(request.getContextPath());
		pageNavi.setNavigator();
		request.setAttribute("pageNavi", pageNavi);
		
		return "/culture/perfomence.jsp?";
	}

}
