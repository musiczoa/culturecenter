package com.kitri.board.admin.model.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.kitri.board.model.BoardListDto;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;

public class BoardAdminDaoImpl implements BoardAdminDao {
	
private static BoardAdminDaoImpl dao;
	
	static {
		dao = new BoardAdminDaoImpl();
	}
	
	private BoardAdminDaoImpl(){}
	
	public static BoardAdminDaoImpl getInstance(){
		return dao;
	}

	@Override
	public List<BoardListDto> boardList() {
		List<BoardListDto> blist = new ArrayList<BoardListDto>();//정보를 담을 list를 생성
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;		
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			//db에서 보드리스트를 얻어오자
			sql.append("select b.bcode, b.bname, b.btype, c.ccode, c.cname \n");
			sql.append("from board_list b, category c \n");
			sql.append("where b.ccode=c.ccode \n");
			sql.append("order by c.ccode, b.btype");
			pstmt = conn.prepareStatement(sql.toString());
			rs = pstmt.executeQuery();
			while(rs.next()){
				BoardListDto blDto = new BoardListDto();
				blDto.setBcode(rs.getInt("bcode"));
				blDto.setBname(rs.getString("bname"));
				blDto.setBtype(rs.getInt("btype"));
				blDto.setCcode(rs.getInt("ccode"));
				blDto.setCname(rs.getString("cname"));
				
				blist.add(blDto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBClose.close(conn, pstmt, rs);
		}		
		return blist;
	}

	@Override
	public void makeCategory(String cname) {
	}

	@Override
	public void makeBoard(BoardListDto boardListDto) {
	}

}
