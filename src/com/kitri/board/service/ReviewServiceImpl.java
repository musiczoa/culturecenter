package com.kitri.board.service;


import java.util.*;

import com.kitri.board.model.ReviewDto;
import com.kitri.board.model.dao.*;
import com.kitri.util.Constant;
import com.kitri.util.PageNavigation;

public class ReviewServiceImpl implements ReviewService{

	private static ReviewServiceImpl service;
	
	static {
		service = new ReviewServiceImpl();
	}
	
	private ReviewServiceImpl(){}
	
	public static ReviewServiceImpl getInstance() {
		return service;
	}
	
	@Override
	public int writeArticle(ReviewDto reboardDto) {
		int seq = ReviewDaoImpl.getInstance().getNextSeq();
		if(seq != 0) {
			reboardDto.setSeq(seq);
			reboardDto.setRef(seq);
			
			seq = ReviewDaoImpl.getInstance().writeArticle(reboardDto);
		}
		return seq;
	}

	@Override
	public List<ReviewDto> listArticle(int bcode, int pg, String key, String word) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("bcode", String.valueOf(bcode));
		int end = pg * Constant.LIST_COUNT;
		int start = end - Constant.LIST_COUNT;
		map.put("start", start + "");
		map.put("end", end + "");
		map.put("key", key);
		map.put("word", word);
		return ReviewDaoImpl.getInstance().listArticle(map);
	}
	
	@Override
	public PageNavigation makePageNavi(int bcode, int pg, String key,
			String word) {
		PageNavigation pageNavi = new PageNavigation();
		
		int newArticleCount = ReboardDaoImpl.getInstance().getNewArticleCount(bcode);
		pageNavi.setNewArticleCount(newArticleCount);
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("bcode", String.valueOf(bcode));
		map.put("key", key);
		map.put("word", word);
		int totalArticleCount = ReboardDaoImpl.getInstance().getTotalArticleCount(map);
		pageNavi.setTotalArticleCount(totalArticleCount);
		
		int totalPageCount = (totalArticleCount - 1) / Constant.LIST_COUNT + 1;
		pageNavi.setTotalPageCount(totalPageCount);
		pageNavi.setCurrentPage(pg);
		pageNavi.setNowFirst(pg <= Constant.PAGE_COUNT);
		pageNavi.setNowEnd((totalPageCount - 1) / totalPageCount * Constant.PAGE_COUNT + 1 <= pg);
		
		return pageNavi;
	}

	@Override
	public ReviewDto getArticle(int seq) {
		ReviewDto reboardDto = ReviewDaoImpl.getInstance().getArticle(seq);		
			ReboardDaoImpl.getInstance().updateHit(seq);
		
		return reboardDto;
	}

	@Override
	public int replyArticle(ReviewDto reboardDto) {
		int seq = ReboardDaoImpl.getInstance().getNextSeq();
		if(seq != 0) {
			reboardDto.setSeq(seq);
			
			seq = ReviewDaoImpl.getInstance().replyArticle(reboardDto);
		}
		return seq;
	}

	@Override
	public int modifyArticle(ReviewDto reboardDto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteArticle(int seq) {
		// TODO Auto-generated method stub
		return 0;
	}

	

}
