package com.kitri.util.db;

import java.sql.*;

// DB �������ִ°� di!!!!!!

//�ĸ���
public class DBConnection {
	static {
		try {
			Class.forName(DBInfo.DB_DRIVER);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static Connection makeConnection() throws SQLException {
		Connection conn = null;
		conn = DriverManager.getConnection(DBInfo.DB_URL, DBInfo.DB_USER,
				DBInfo.DB_PWD);
		return conn;
	}
}