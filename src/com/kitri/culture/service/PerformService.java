package com.kitri.culture.service;

import java.util.List;

import com.kitri.culture.dto.cultureDto;
import com.kitri.util.PageNavigation;

public interface PerformService {
	
	public List<cultureDto> perList(int ctype, int pg, String word);
	
	public cultureDto perInfo(int ctype, int seq);
	
	public PageNavigation makePageNavi(int ctype, int pg, String word);
			

}
