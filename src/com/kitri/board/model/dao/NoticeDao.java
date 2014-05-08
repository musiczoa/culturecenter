package com.kitri.board.model.dao;

import java.util.List;
import java.util.Map;

import com.kitri.board.model.NoticeDto;

public interface NoticeDao {
	
	public int getNextSeq();
	
	public int writeArticle(NoticeDto reboardDto);
	
	public List<NoticeDto> listArticle(Map<String, String> map);
	
	public NoticeDto getArticle(int seq);
		
	public void updateHit(int seq);	
	
	public int modifyArticle(NoticeDto reboardDto);	
		
	public int deleteArticle(int seq, int bcode);
	
	public int getNewArticleCount(int bcode);
	
	public int getTotalArticleCount(Map<String, String> map);

}
