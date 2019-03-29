package com.sg.common.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;

import com.alibaba.druid.pool.DruidDataSource;

/*
 * 数据库连接工具类
 */
public class DbUtil {
	private static DruidDataSource dds;		

	private static final String MYSQL_URL = "jdbc:mysql://localhost:3306/playground_route_planning";
	private static final String MYSQL_DRIVER = "com.mysql.jdbc.Driver";
	private static final String MYSQL_USERNAME = "root";
	private static final String MYSQL_PASSWORD = "root";


	static {
		dds = new DruidDataSource();
		dds.setDriverClassName(MYSQL_DRIVER);
		dds.setUrl(MYSQL_URL);
		dds.setUsername(MYSQL_USERNAME);
		dds.setPassword(MYSQL_PASSWORD);
	}
	
	public static DataSource getDataSource() {
		return dds;
	}
	
	public static Connection getDBConn() {
		try {
			return dds.getPooledConnection().getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public static void close(Connection conn) throws SQLException {
		if(conn != null) {
			conn.close();
		}
	}
	
	public static void close(Statement stat) throws SQLException {
		if(stat != null) {
			stat.close();
		}
	}
	
	public static void close(ResultSet rs) throws SQLException {
		if(rs != null) {
			rs.close();
		}
	}
	
	public static void close(Connection conn, Statement stat) throws SQLException {
		close(stat);
		close(conn);
	}
	
	public static void close(Connection conn, Statement stat, ResultSet rs) throws SQLException {
		close(conn, stat);
		close(rs);
	}
	
}
