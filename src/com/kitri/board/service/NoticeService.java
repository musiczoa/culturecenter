package com.kitri.board.service;

import java.util.List;

import com.kitri.board.model.NoticeDto;

public interface NoticeService {
//	1.�������� ��� ������
//	2.�������� �� �ø���
//	3.�������� �� ����
//	4.�������� �� ����
//	5.�������� �� ����
	public List<NoticeDto> listNotice(int bcode, int pg);
	
	public int writeNotice(NoticeDto noticeDto);
	
	public int deleteNotice(NoticeDto noticeDto);
	
	public int modifyNotice(NoticeDto noticeDto);
	
	public NoticeDto getNotice(int seq, String id);
	
	

}
