package com.kitri.board.model.dao;

import java.util.List;
import java.util.Map;

import com.kitri.board.model.ReboardDto;


public interface QnaDao {
	public List<ReboardDto> listArticle(int start, int end);
	
	public List<ReboardDto> searchArticle(Map<String, String> map);

	public int getNextSeq(); // ���� �� ��ȣ ��� ���� Method!

	public int writeArticle(ReboardDto qnaDto); // �� �ۼ��ϴ� Method!

	public ReboardDto getArticle(int seq); //

	public void updateHit(int seq); // �� ��ȸ �� ���� Method!

	public int replyArticle(ReboardDto reboardDto); // ��� ���� Method!

	public int modifyArticle(ReboardDto reboardDto); // �� ���� Method!

	public int replyCount(int seq); // ��� ���� Ȯ���ϴ� Method!

	public int deleteArticle(int seq); // �� ���� Method!

}
