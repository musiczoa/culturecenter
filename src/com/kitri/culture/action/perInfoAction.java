package com.kitri.culture.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.action.Action;
import com.kitri.culture.dto.cultureDto;
import com.kitri.culture.service.PerformServiceImpl;
import com.kitri.util.StringCheck;

public class perInfoAction implements Action {

	@Override
	public String action(HttpServletRequest request, HttpServletResponse response) {
		int seq = StringCheck.nullToZero(request.getParameter("seq"));
		
		cultureDto cDto = PerformServiceImpl.getInstance().perInfo(seq);
		
		request.setAttribute("detailInfo", cDto);
		
		
		return "/culture/perDetail.jsp?";
	}

}
