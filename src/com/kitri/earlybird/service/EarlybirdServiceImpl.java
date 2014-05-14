package com.kitri.earlybird.service;

import java.util.List;

import com.kitri.board.service.ReboardServiceImpl;
import com.kitri.culture.dto.cultureDto;

public class EarlybirdServiceImpl implements EarlybirdService {
	private static EarlybirdServiceImpl service;

	static {
		service = new EarlybirdServiceImpl();
	}

	private EarlybirdServiceImpl() {
	}

	public static EarlybirdServiceImpl getInstance() {
		return service;
	}


	@Override
	public List<cultureDto> listCulture(int pg, String key, String word) {
		// TODO Auto-generated method stub
		return null;
	}

}
