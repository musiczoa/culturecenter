package com.kitri.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	public String action(HttpServletRequest request, HttpServletResponse response);
}
