package com.kitri.board.admin.model.dao;

import java.util.List;

import com.kitri.board.model.BoardListDto;

public interface BoardAdminDao {
	
	public List<BoardListDto> boardList();//게시판 목록
	
	public void makeCategory(String cname);//카테고리 얻어오는것
	
	public void makeBoard(BoardListDto boardListDto);//게시판 만드는것

}
