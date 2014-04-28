package com.kitri.board.admin.service;

import java.util.List;

import com.kitri.board.admin.model.dao.BoardAdminDaoImpl;
import com.kitri.board.model.BoardListDto;

public class BoardAdminServiceImpl implements BoardAdminService {

	private static BoardAdminServiceImpl service;
	
	static {
		service = new BoardAdminServiceImpl();
	}
	
	private BoardAdminServiceImpl(){}
	
	public static BoardAdminServiceImpl getInstance(){
		return service;
	}
	
	@Override
	public List<BoardListDto> boardList() {
		return BoardAdminDaoImpl.getInstance().boardList();
		//BoardAdminDaoImpl로 가서 list형식의 정보를 가지고오자.
	}

	@Override
	public void makeCategory(String cname) {
	}

	@Override
	public void makeBoard(BoardListDto boardListDto) {
	}

}
