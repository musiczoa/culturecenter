package com.kitri.board.service;

import java.util.List;
import java.util.Map;

import com.kitri.board.model.ReboardDto;
import com.kitri.util.PageNavigation;

public interface ReboardService {
	public int writeArticle(ReboardDto reboardDto);

	public List<ReboardDto> listArticle(int bcode, int pg, String key, String word);
	
	public PageNavigation makePageNavi(int bcode, int pg, String key, String word);

	public ReboardDto getArticle(int seq, String id);

	public int replyArticle(ReboardDto reboardDto);

	public int modifyArticle(ReboardDto reboardDto);

	public int deleteArticle(int seq);
	
}
