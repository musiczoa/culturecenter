package com.kitri.board.admin.service;

import java.util.List;

import com.kitri.board.model.BoardListDto;

public interface BoardAdminService {
	public List<BoardListDto> boardList();
	
	public void makeCategory(String cname);
	
	public void makeBoard(BoardListDto boardListDto);

}
