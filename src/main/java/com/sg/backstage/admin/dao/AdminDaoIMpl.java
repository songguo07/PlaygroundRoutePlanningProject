package com.sg.backstage.admin.dao;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
public class AdminDaoIMpl {
	public boolean login(String Sid) {
		Connection conn = DBUtil.getConnection();
		Statement pstmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM USER_TABLE WHERE USER_ID='"+Sid+"'";
		try {
			pstmt = conn.createStatement();
			rs = pstmt.executeQuery(sql);
			if (rs.next()){
				System.out.println("000");
				return true;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.closeJDBC(rs, pstmt, conn);
		}
		return false;
	}

}


/**public class AdminDaoIMpl implements AdminDao {

}**/
