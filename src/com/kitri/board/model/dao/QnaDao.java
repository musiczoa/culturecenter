package com.kitri.board.model.dao;

import java.util.List;
import java.util.Map;

import com.kitri.board.model.QnaDto;


public interface QnaDao {
	
	public int getNextSeq();
	
	public int writeArticle(QnaDto qnaDto);

	public List<QnaDto> listArticle(Map<String, String> map);
	
	public int getNewArticleCount(int bcode);
	
	public int getTotalArticleCount(Map<String, String> map);

	public QnaDto getArticle(int seq);

	public void updateHit(int seq);

	public int replyArticle(QnaDto qnaDto);

	public int modifyArticle(QnaDto qnaDto);

	public int replyCount(int seq);

	public int deleteArticle(int seq);
	
	
}
