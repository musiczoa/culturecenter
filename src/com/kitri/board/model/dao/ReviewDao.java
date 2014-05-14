package com.kitri.board.model.dao;

import java.util.List;
import java.util.Map;

import com.kitri.board.model.ReviewDto;

public interface ReviewDao {
	public int getNextSeq();
	
	public int writeArticle(ReviewDto reboardDto);
	
	public List<ReviewDto> listArticle(Map<String, String> map);
	
	public int getNewArticleCount(int bcode);
	
	public int getTotalArticleCount(Map<String, String> map);
	
	public ReviewDto getArticle(int seq);
		
	public void updateHit(int seq);
	
	public int replyArticle(ReviewDto reboardDto);
	
	public int modifyArticle(ReviewDto reboardDto);
	
	public int replyCount(int seq);
	
	public int deleteArticle(int seq);
}
