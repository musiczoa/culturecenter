package com.kitri.board.service;

import java.util.List;

import com.kitri.board.model.GuestBookDto;
import com.kitri.util.PageNavigation;

public interface GuestBookService {

//	1.방명록 목록 얻어오기(글보기)
//	2.방명록 글 올리기
//	3.방명록 글 삭제
//	4.방명록 글 수정
	public List<GuestBookDto> listGuest(int bcode, int pg);
	
	public int writeGuestBook(GuestBookDto guestbookDto);
	
	public int deleteNotice(GuestBookDto guestbookDto);
	
	public int modifyNotice(GuestBookDto guestbookDto);
	
	public GuestBookDto getGuest(int seq, String id);
	
	public PageNavigation makePageNavi(int bcode, int pg);
	
}
