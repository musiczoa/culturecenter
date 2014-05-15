package com.kitri.earlybird.service;

import java.util.List;

import com.kitri.culture.dto.cultureDto;

public interface EarlybirdService {
	public List<cultureDto> listCulture(int pg, String key, String word);
}
