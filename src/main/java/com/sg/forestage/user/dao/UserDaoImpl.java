package com.sg.forestage.user.dao;


import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.sg.common.util.DbUtil;
import com.sg.forestage.user.entity.User;

/**
 * 鐢ㄦ埛閫昏緫灞傚疄鐜扮被
 */
public class UserDaoImpl implements UserDao{

	Connection conn=DbUtil.getDBConn();
	QueryRunner qr=new QueryRunner();
	/**
	 * 鐢ㄦ埛娉ㄥ唽
	 *
	 *
	 * @author 鏉庨摱闇�
	 */
	@Override
	public int doRegist(User user) {
		String sql="insert into user(user_id,user_telno,user_nickname,user_password) value(?,?,?,?)";
		String [] param= {user.getUserId(),user.getUserTelno(),user.getUserNickname(),user.getUserPassword()};
		int row=0;
		try {
			row = qr.update(conn, sql,param);
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return row;
	}
	/**
	 * 鐢ㄦ埛鐧婚檰
	 *
	 *
	 * @author 鏉庨摱闇�
	 */
	@Override
	public User doLogin(String userTelno, String userPassword) {
		String sql = "select user_id userId,user_telno userTelno,user_nickname userNickname,user_age userAge,user_gender userGender,user_password userPassword ,user_image userImage from user where user_telno = '"+userTelno+"'and user_password = '"+userPassword+"'";
		System.out.println(sql);
		User user=null;
		try {
			user = qr.query(conn, sql,new BeanHandler<User>(User.class));
			System.out.println(user);
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	/**
	 * 鐢ㄦ埛淇敼瀵嗙爜
	 *
	 *
	 * @author 鏉庨摱闇�
	 */
	@Override
	public int doChangePassword(String userTelno, String userPassword) {
		String sql="update user set user_password='"+userPassword+"' where user_telno='"+userTelno+"'";
		System.out.println(sql);
		try {
			return qr.update(conn, sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

}
