package com.kitri.board.service;

import java.util.List;

import com.kitri.board.model.ReviewDto;
import com.kitri.util.PageNavigation;

public class ReviewServiceImpl implements ReviewService {

	@Override
	public List<ReviewDto> listreivew(int bcode, int pg, String key, String word) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int writeReview(ReviewDto reviewDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteReview(ReviewDto reviewDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int modifyReview(ReviewDto reviewDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ReviewDto getReview(int seq, String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageNavigation makePageNavi(int bcode, int pg, String key,
			String word) {
		// TODO Auto-generated method stub
		return null;
	}

}
