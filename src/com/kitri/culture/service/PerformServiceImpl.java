package com.kitri.culture.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.kitri.culture.dao.PerformDaoImpl;
import com.kitri.culture.dto.cultureDto;
import com.kitri.util.Constant;
import com.kitri.util.PageNavigation;

public class PerformServiceImpl implements PerformService {
	
	private static PerformServiceImpl service;
	
	static{
		service = new PerformServiceImpl();
	}
	
	private PerformServiceImpl(){}
	
	public static PerformServiceImpl getInstance(){
		return service;
	}

	@Override
	public List<cultureDto> perList(int ctype, int pg, String word) {
		Map<String, String> map = new HashMap<String, String>();
				
		int end = pg*Constant.LIST_COUNT;
		int start = end - Constant.LIST_COUNT;
		
		map.put("start", start+"");
		map.put("end", end+"");
		map.put("ctype", ctype+"");
		map.put("pg", pg+"");
		map.put("word", word);
		
		return PerformDaoImpl.getInstance().performList(map);
	}

	@Override
	public cultureDto perInfo(int ctype, int seq) {		 
		return PerformDaoImpl.getInstance().perInfo(ctype, seq);
	}

	@Override
	public PageNavigation makePageNavi(int ctype, int pg, String word) {
		PageNavigation pageNavi = new PageNavigation();
		
		Map<String, String> map = new HashMap<String, String>();		
		map.put("pg", pg+"");
		map.put("ctype", ctype+"");
		map.put("word", word);
		
		int totalPerCount = PerformDaoImpl.getInstance().getTotalPerCount(map);
		System.out.println("ÅäÅ» °ø¿¬°¹¼ö"+totalPerCount);
		pageNavi.setTotalArticleCount(totalPerCount);
		
		int totalPageCount = (totalPerCount-1)/Constant.LIST_COUNT+1;
		pageNavi.setTotalPageCount(totalPageCount);
		
		pageNavi.setCurrentPage(pg);
		pageNavi.setNowFirst(pg<=Constant.PAGE_COUNT);
		pageNavi.setNowEnd((totalPageCount-1)/Constant.PAGE_COUNT*Constant.PAGE_COUNT+1 <= pg);
		
		return pageNavi;
	}

}
