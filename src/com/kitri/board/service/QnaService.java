package com.kitri.board.service;

import java.util.List;

import com.kitri.board.model.ReboardDto;

public interface QnaService {
	
	public List<ReboardDto> listArticle(int pg);
	
	public List<ReboardDto> searchArticle(int pg, int bcode, String key, String word); // (page, 검색 조건, 검색어)

	public ReboardDto getArticle(int seq, String id); 
	
	public int replyArticle(ReboardDto qnaDto); 
	
	public int modifyArticle(ReboardDto qnaDto); 
	
	public int deleteArticle(int seq);
}
