package com.kitri.board.admin.model.dao;

import java.util.List;

import com.kitri.board.model.BoardListDto;

public interface BoardAdminDao {

	public List<BoardListDto> boardList();

	public void makeCategory(String cname);

	public void makeBoard(BoardListDto boardListDto);

}
