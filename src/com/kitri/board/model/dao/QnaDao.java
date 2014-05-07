package com.kitri.board.model.dao;

import java.util.List;
import java.util.Map;

import com.kitri.board.model.ReboardDto;


public interface QnaDao {
	public List<ReboardDto> listArticle(int start, int end);
	
	public List<ReboardDto> searchArticle(Map<String, String> map);

	public int getNextSeq(); // 다음 글 번호 얻어 오는 Method!

	public int writeArticle(ReboardDto qnaDto); // 글 작성하는 Method!

	public ReboardDto getArticle(int seq); //

	public void updateHit(int seq); // 글 조회 수 증가 Method!

	public int replyArticle(ReboardDto reboardDto); // 답글 쓰기 Method!

	public int modifyArticle(ReboardDto reboardDto); // 글 수정 Method!

	public int replyCount(int seq); // 답글 갯수 확인하는 Method!

	public int deleteArticle(int seq); // 글 삭제 Method!

}
