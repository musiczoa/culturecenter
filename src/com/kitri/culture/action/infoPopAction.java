package com.kitri.culture.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.action.Action;
import com.kitri.culture.dto.cultureDto;
import com.kitri.culture.service.PerformServiceImpl;
import com.kitri.util.StringCheck;

public class infoPopAction implements Action {

	@Override
	public String action(HttpServletRequest request, HttpServletResponse response) {
		int ctype = StringCheck.nullToZero(request.getParameter("ctype"));	
		int seq = StringCheck.nullToZero(request.getParameter("seq"));		
		
		cultureDto cDto = PerformServiceImpl.getInstance().perInfo(ctype, seq);
		
		request.setAttribute("detailInfo", cDto);
		
		
		return "/SeatTest/space1/note.jsp?";
	}

}
