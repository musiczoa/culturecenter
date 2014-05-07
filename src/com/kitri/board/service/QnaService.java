package com.kitri.board.service;

import java.util.List;

import com.kitri.board.model.QnaDto;

public interface QnaService {
	
	public List<QnaDto> listArticle(int pg);
	
	public List<QnaDto> searchArticle(int pg, int bcode, String key, String word); // (page, 검색 조건, 검색어)

	public QnaDto getArticle(int seq, String id); 
	
	public int replyArticle(QnaDto qnaDto); 
	
	public int modifyArticle(QnaDto qnaDto); 
	
	public int deleteArticle(int seq);
}
