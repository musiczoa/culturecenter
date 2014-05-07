package com.kitri.board.model.dao;

import java.util.List;
import java.util.Map;

import com.kitri.board.model.QnaDto;


public interface QnaDao {
	public List<QnaDto> listArticle(int start, int end);
	
	public List<QnaDto> searchArticle(Map<String, String> map);

	public int getNextSeq(); // ���� �� ��ȣ ��� ���� Method!

	public int writeArticle(QnaDto qnaDto); // �� �ۼ��ϴ� Method!

	public QnaDto getArticle(int seq); //

	public void updateHit(int seq); // �� ��ȸ �� ���� Method!

	public int replyArticle(QnaDto reboardDto); // ��� ���� Method!

	public int modifyArticle(QnaDto reboardDto); // �� ���� Method!

	public int replyCount(int seq); // ��� ���� Ȯ���ϴ� Method!

	public int deleteArticle(int seq); // �� ���� Method!

}
