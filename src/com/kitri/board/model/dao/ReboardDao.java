package com.kitri.board.model.dao;

import java.util.List;
import java.util.Map;

import com.kitri.board.model.ReboardDto;

public interface ReboardDao {
	
	public int getNextSeq();
	
	public int writeArticle(ReboardDto reboardDto);

	public List<ReboardDto> listArticle(Map<String, String> map);
	
	public int getNewArticleCount(int bcode);
	
	public int getTotalArticleCount(Map<String, String> map);

	public ReboardDto getArticle(int seq);

	public void updateHit(int seq);

	public int replyArticle(ReboardDto reboardDto);

	public int modifyArticle(ReboardDto reboardDto);

	public int replyCount(int seq);

	public int deleteArticle(int seq);
	
	
}
