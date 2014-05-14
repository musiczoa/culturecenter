package com.kitri.earlybird.create.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kitri.action.Action;
import com.kitri.culture.dto.cultureDto;
import com.kitri.earlybird.service.EarlybirdServiceImpl;
import com.kitri.util.Encoder;
import com.kitri.util.StringCheck;


public class ListAction implements Action{
	@Override
	public String action(HttpServletRequest request,
			HttpServletResponse response) {
		
		List<cultureDto> list = new ArrayList<cultureDto>();
		int pg = StringCheck.nullToOne(request.getParameter("pg"));
		String key = StringCheck.nullToBlank(request.getParameter("key"));
		String word = Encoder.isoToEuc(request.getParameter("word"));
		
		list= EarlybirdServiceImpl.getInstance().listCulture(pg, key, word);
		
		request.setAttribute("list", list);
		
		
		
		
		
		return "";
		
	}

}
