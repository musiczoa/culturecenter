package com.kitri.board.model.dao;

import java.util.List;
import java.util.Map;

import com.kitri.board.model.NoticeDto;

public interface BoardDao {
	
	public int writeArticle(NoticeDto reboardDto);
	
	public List<NoticeDto> listArticle(Map<String, String> map);
	
	public NoticeDto getArticle(int seq);
		
	public void updateHit(int seq);
	
	public int replyArticle(NoticeDto reboardDto);
	
	public int modifyArticle(NoticeDto reboardDto);
	
	public int replyCount(int seq);
	
	public int deleteArticle(int seq);

}
