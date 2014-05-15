package com.kitri.board.reboard.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.action.Action;
import com.kitri.board.service.ReboardServiceImpl;
import com.kitri.util.StringCheck;
import com.sun.org.glassfish.external.statistics.impl.RangeStatisticImpl;

public class DeleteAction implements Action {

	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		System.out.println("딜리트액션 입장");
		int seq = StringCheck.nullToZero(request.getParameter("seq"));
		int count=ReboardServiceImpl.getInstance().deleteArticle(seq);
		return count==0? "/community/reboard/deleteFail.jsp?":"/community/reboard/deleteOk.jsp?";
	}
}
