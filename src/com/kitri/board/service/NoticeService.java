package com.kitri.board.service;

import java.util.List;

import com.kitri.board.model.NoticeDto;
import com.kitri.util.PageNavigation;

public interface NoticeService {
//	1.공지사항 목록 얻어오기
//	2.공지사항 글 올리기
//	3.공지사항 글 삭제
//	4.공지사항 글 수정
//	5.공지사항 글 보기
	public List<NoticeDto> listNotice(int bcode, int pg, String key, String word);
	
	public int writeNotice(NoticeDto noticeDto);
	
	public int deleteNotice(NoticeDto noticeDto);
	
	public int modifyNotice(NoticeDto noticeDto);
	
	public NoticeDto getNotice(int seq, String id);
	
	public PageNavigation makePageNavi(int bcode, int pg, String key, String word);
	
	

}
