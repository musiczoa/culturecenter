package com.kitri.culture.dao;

import java.util.List;
import java.util.Map;

import com.kitri.culture.dto.cultureDto;

public interface PerformDao {
	
	public List<cultureDto> performList(Map<String, String> map);
	
	public int getTotalPerCount(Map<String, String> map);
	
	public cultureDto perInfo(int seq);

}
