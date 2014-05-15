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
			sql.append("from ( select RANK() over(order by c_date) rank, c.cseq, pname, thumbnail, to_char(c_date, 'yyyy.mm.dd') c_date, space_name \n");
			sql.append("        from culture c, ticket t, space s  \n");
			sql.append("        where c.cseq=t.cseq and c.space_code=s.space_code and c_date>=sysdate \n");
			sql.append("        and c.ctype=?  \n");
			
			String word = map.get("word");
			if(!word.isEmpty()) {
				sql.append("        and pname like '%'||?||'%' \n");			
			}			
			sql.append("     ) a \n");
			sql.append("where a.rank > ? and a.rank <= ? \n");
//			System.out.println(sql);
			pstmt = conn.prepareStatement(sql.toString());
			int idx =0;
			pstmt.setString(++idx, map.get("ctype"));
			System.out.println("디에잉에서 씨타입 : "+map.get("ctype"));
			if(!word.isEmpty()){
				pstmt.setString(++idx, map.get("word"));
			}
			pstmt.setString(++idx, map.get("start"));
			pstmt.setString(++idx, map.get("end"));
			rs= pstmt.executeQuery();			
			while(rs.next()){
			cultureDto cdto = new cultureDto();
			cdto.setSeq(rs.getString("cseq"));
			cdto.setPname(rs.getString("pname"));
			cdto.setThumbnail(rs.getString("thumbnail"));
			cdto.setC_date(rs.getString("c_date"));
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
			sql.append("select count(cseq)\n");
			sql.append("from culture \n");
			sql.append("where c_date>=sysdate \n");
			sql.append("and ctype=?  \n");
			
			String word = map.get("word");//맵에서 검색값을 빼와서 넣자.
			if(!word.isEmpty()){//키와 검색어가 모두 빈칸이 아닐때만 적용
				sql.append("and pname like '%'||?||'%' \n");				
			}
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, map.get("ctype"));
			if(!word.isEmpty())//키와 검색어가 모두 빈칸이 아닐때만 적용
				pstmt.setString(2, map.get("word"));//검색어를 집어 넣음.			
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
	public cultureDto perInfo(int ctype, int seq) {
		cultureDto cDto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBConnection.makeConnection();
			StringBuffer sql = new StringBuffer();
			sql.append("select c.cseq, pname, summary, to_char(c_date, 'yyyy.mm.dd') c_date, c_time, age, t_grade, to_char(t_price,'999,999,999') t_price, space_name \n");
			sql.append("from culture c, ticket t, space s \n");
			sql.append("where c.cseq=t.cseq and c.space_code=s.space_code and c.cseq=?\n");
			pstmt = conn.prepareStatement(sql.toString());
			System.out.println("정보 디에이오에서 씨타입 : "+ctype);
			pstmt.setInt(1, seq);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				cDto = new cultureDto();
				cDto.setSeq(rs.getString("cseq"));
				cDto.setPname(rs.getString("pname"));
				cDto.setSummary(rs.getString("summary"));
				cDto.setC_date(rs.getString("c_date"));
				cDto.setC_time(rs.getString("c_time"));
				cDto.setAge(rs.getString("age"));
				cDto.setT_grade(rs.getString("t_grade"));
				cDto.setT_price(rs.getString("t_price"));
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
