package com.kitri.board.admin.service;

import java.util.List;

import com.kitri.board.model.BoardListDto;

public interface BoardAdminService {
	
	public List<BoardListDto> boardList();//�Խ��� ���
	
	public void makeCategory(String cname);//ī�װ� �����°�
	
	public void makeBoard(BoardListDto boardListDto);//�Խ��� ����°�

}
