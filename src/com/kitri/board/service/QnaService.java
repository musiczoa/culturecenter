package com.kitri.board.service;

import java.util.List;
import java.util.Map;

import com.kitri.board.model.QnaDto;
import com.kitri.util.PageNavigation;

public interface QnaService {
	public int writeArticle(QnaDto reboardDto);

	public List<QnaDto> listArticle(int bcode, int pg, String key, String word);
	
	public PageNavigation makePageNavi(int bcode, int pg, String key, String word);

	public QnaDto getArticle(int seq, String id);

	public int replyArticle(QnaDto reboardDto);

	public int modifyArticle(QnaDto reboardDto);

	public int deleteArticle(int seq);
	
}
