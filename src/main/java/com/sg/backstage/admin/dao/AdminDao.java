package com.sg.backstage.admin.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class AdminDao {

	public void login() {
		Connection conn = DBUtil.getConnection();
		Statement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM USER_TABLE";
		try {
			pstmt = conn.createStatement();
			rs = pstmt.executeQuery(sql);
			while(rs.next()){
				System.out.println(rs.getString("name"));
				System.out.println("\n");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeJDBC(rs, pstmt, conn);
		}
		//return false;
	}
}









