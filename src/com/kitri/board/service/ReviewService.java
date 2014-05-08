package com.kitri.board.service;

import java.util.List;

import com.kitri.board.model.ReviewDto;
import com.kitri.util.PageNavigation;

public interface ReviewService {
	
public List<ReviewDto> listreivew(int bcode, int pg, String key, String word);
	
	public int writeReview(ReviewDto reviewDto);
	
	public int deleteReview(ReviewDto reviewDto);
	
	public int modifyReview(ReviewDto reviewDto);
	
	public ReviewDto getReview(int seq, String id);
	
	public PageNavigation makePageNavi(int bcode, int pg, String key, String word);

}
