package com.kitri.board.admin.model.dao;

import java.util.List;

import com.kitri.board.model.BoardListDto;

public interface BoardAdminDao {
	
	public List<BoardListDto> boardList();//�Խ��� ���
	
	public void makeCategory(String cname);//ī�װ� �����°�
	
	public void makeBoard(BoardListDto boardListDto);//�Խ��� ����°�

}
