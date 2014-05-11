package com.kitri.culture.service;

import java.util.List;

import com.kitri.culture.dto.cultureDto;
import com.kitri.util.PageNavigation;

public interface PerformService {
	
	public List<cultureDto> perList(int pg, String word);
	
	public cultureDto perInfo(int seq);
	
	public PageNavigation makePageNavi(int pg, String word);
			

}
