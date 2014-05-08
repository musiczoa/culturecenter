package com.kitri.board.service;

import java.util.List;

import com.kitri.board.model.GuestBookDto;
import com.kitri.util.PageNavigation;

public interface GuestBookService {

//	1.���� ��� ������(�ۺ���)
//	2.���� �� �ø���
//	3.���� �� ����
//	4.���� �� ����
	public List<GuestBookDto> listGuest(int bcode, int pg);
	
	public int writeGuestBook(GuestBookDto guestbookDto);
	
	public int deleteNotice(GuestBookDto guestbookDto);
	
	public int modifyNotice(GuestBookDto guestbookDto);
	
	public GuestBookDto getGuest(int seq, String id);
	
	public PageNavigation makePageNavi(int bcode, int pg);
	
}
