package com.kitri.board.service;

import java.util.List;
import java.util.Map;

import com.kitri.board.model.ReboardDto;

public interface ReboardService {
	
	public int writeArticle(ReboardDto reboardDto);
	
	public List<ReboardDto> listArticle(int bcode, int pg, String key, String word);
	
	public ReboardDto getArticle(int seq, String id);
	
//	public void updateHit(int seq);
	
	public int replyArticle(ReboardDto reboardDto);
	
	public int modifyArticle(ReboardDto reboardDto);
	
//	public int replyCount(int seq); // 아래 삭제하기 전에 답글이 몇갠인지. 답글있음 못지우니까
	
	public int deleteArticle(int seq);

}
