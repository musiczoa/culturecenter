package com.kitri.board.model.dao;

import java.util.List;
import java.util.Map;

import com.kitri.board.model.ReboardDto;

public interface ReboardDao {
	
	public int getNextSeq();
	
	public int writeArticle(ReboardDto reboardDto);
	
	public List<ReboardDto> listArticle(Map<String, String> map);
	
	public ReboardDto getArticle(int seq);
	
	public void updateHit(int seq);
	
	public int replyArticle(ReboardDto reboardDto);
	
	public int modifyArticle(ReboardDto reboardDto);
	
	public int replyCount(int seq); // 아래 삭제하기 전에 답글이 몇갠인지. 답글있음 못지우니까
	
	public int deleteArticle(int seq);
}