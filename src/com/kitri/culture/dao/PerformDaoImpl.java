package com.kitri.culture.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.kitri.culture.dto.cultureDto;
import com.kitri.culture.service.PerformServiceImpl;
import com.kitri.util.db.DBClose;
import com.kitri.util.db.DBConnection;

public class PerformDaoImpl implements PerformDao {
	
private static PerformDaoImpl dao;
	
	static{
		dao = new PerformDaoImpl();
	}
	
	private PerformDaoImpl(){}
	
	public static PerformDaoImpl getInstance(){
		return dao;
	}

	@Override
	public List<cultureDto> performList(Map<String, String> map) {
		List<cultureDto> list = new ArrayList<cultureDto>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			
			StringBuffer sql = new StringBuffer();
			sql.append("select a.* \n");
			sql.append("from ( select RANK() over(order by e_time) rank, pseq, pname, summary, to_char(s_time, 'yyyy.mm.dd') s_time, to_char(e_time, 'yyyy.mm.dd') e_time, p_time, age, ticket_price, space_name \n");
			sql.append("        from per_list p, space s  \n");
			sql.append("        where p.space_code=s.space_code and e_time >=sysdate \n");
			
			String word = map.get("word");
			if(!word.isEmpty()) {
				sql.append("        and pname like '%'||?||'%' \n");			
			}			
			sql.append("     ) a \n");
			sql.append("where a.rank > ? and a.rank <= ? \n");
//			System.out.println(sql);
			pstmt = conn.prepareStatement(sql.toString());
			int idx =0;
			if(!word.isEmpty()){
				pstmt.setString(++idx, map.get("word"));
			}
			pstmt.setString(++idx, map.get("start"));
			pstmt.setString(++idx, map.get("end"));
			rs= pstmt.executeQuery();			
			while(rs.next()){
			cultureDto cdto = new cultureDto();
			cdto.setSeq(rs.getString("pseq"));
			cdto.setPname(rs.getString("pname"));
			cdto.setSummary(rs.getString("summary"));
			cdto.setS_time(rs.getString("s_time"));
			cdto.setE_time(rs.getString("e_time"));
			cdto.setP_time(rs.getString("p_time"));
			cdto.setAge(rs.getString("age"));
			cdto.setPrice(rs.getString("ticket_price"));
			cdto.setSpace_name(rs.getString("space_name"));
			
			list.add(cdto);
			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return list;
	}

	@Override
	public int getTotalPerCount(Map<String, String> map) {
		int totalCount = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select count(pseq)\n");
			sql.append("from per_list \n");
			
			String word = map.get("word");//맵에서 검색값을 빼와서 넣자.
			if(!word.isEmpty()){//키와 검색어가 모두 빈칸이 아닐때만 적용
				sql.append("and pname like '%'||?||'%' \n");				
			}
			pstmt = conn.prepareStatement(sql.toString());
			if(!word.isEmpty())//키와 검색어가 모두 빈칸이 아닐때만 적용
				pstmt.setString(1, map.get("word"));//검색어를 집어 넣음.			
			rs= pstmt.executeQuery();
			rs.next();
			totalCount = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			DBClose.close(conn, pstmt, rs);			
		}
		return totalCount;
	}

	@Override
	public cultureDto perInfo(int seq) {
		cultureDto cDto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select pseq, pname, summary, to_char(s_time, 'yyyy.mm.dd') s_time, to_char(e_time, 'yyyy.mm.dd') e_time, p_time, age, to_char(ticket_price, '999,999,999') ticket_price, space_name \n");
			sql.append("from per_list p, space s \n");
			sql.append("where p.space_code=s.space_code and pseq=?\n");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				cDto = new cultureDto();
				cDto.setSeq(rs.getString("pseq"));
				cDto.setPname(rs.getString("pname"));
				cDto.setSummary(rs.getString("summary"));
				cDto.setS_time(rs.getString("s_time"));
				cDto.setE_time(rs.getString("e_time"));
				cDto.setP_time(rs.getString("p_time"));
				cDto.setAge(rs.getString("age"));
				cDto.setPrice(rs.getString("ticket_price"));
				cDto.setSpace_name(rs.getString("space_name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBClose.close(conn, pstmt, rs);
		}
		return cDto;
	}

}
