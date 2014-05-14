package com.kitri.board.service;

import java.util.List;

import com.kitri.board.model.ReviewDto;
import com.kitri.util.PageNavigation;

public interface ReviewService {

	public int writeArticle(ReviewDto reboardDto);
	
	public List<ReviewDto> listArticle(int bcode, int pg, String key, String word);
	
	public PageNavigation makePageNavi(int bcode, int pg, String key, String word);
	
	public ReviewDto getArticle(int seq);
	
	public int replyArticle(ReviewDto reboardDto);
	
	public int modifyArticle(ReviewDto reboardDto);
	
	public int deleteArticle(int seq);
}
