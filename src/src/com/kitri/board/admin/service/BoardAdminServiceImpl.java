package com.kitri.board.admin.service;

import java.util.List;

import com.kitri.board.admin.model.dao.BoardAdminDaoImpl;
import com.kitri.board.model.BoardListDto;
import com.kitri.board.service.ReboardServiceImpl;

public class BoardAdminServiceImpl implements BoardAdminService {
	
	private static BoardAdminServiceImpl service;
	
	static {
		service = new BoardAdminServiceImpl();
	}
	
	private BoardAdminServiceImpl(){}
	
	public static BoardAdminServiceImpl getInstance() {
		return service;
	}
	

	@Override
	public List<BoardListDto> boardList() {
		return BoardAdminDaoImpl.getInstance().boardList();
	}

	@Override
	public void makeCategory(String cname) {

	}

	@Override
	public void makeBoard(BoardListDto boardListDto) {

	}
}
