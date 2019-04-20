package com.sg.forestage.user.dao;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.sg.common.util.DbUtil;
import com.sg.forestage.department.entity.Department;
import com.sg.forestage.user.entity.Evaluate;
import com.sg.forestage.user.entity.Hobby;
import com.sg.forestage.user.entity.User;

/**
 * 用户逻辑层实现类
 */
public class UserDaoImpl implements UserDao{

	Connection conn=DbUtil.getDBConn();
	QueryRunner qr=new QueryRunner();
	/**
	 * 注册功能
	 *
	 *
	 * @author 李银霞
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
	 * 登陆功能
	 *
	 *
	 * @author 李银霞
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
	 * 修改密码
	 *
	 *
	 * @author 李银霞
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

	/**
	 * 添加评分评论
	 * 
	 * @author 高小惠
	 */
	@Override
	public int doAdd(Evaluate ee) {
		String sql="insert into evaluate(user_id,d_id,e_evaluate,e_score) value(?,?,?,?)";
		float score=ee.getEscore();
		String [] param= {ee.getUserId(),ee.getDId(),ee.getEvaluate()};
		int row=0;
		try {
			row = qr.update(conn, sql,param);
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return row;
	}
	
	public List<String> getHobbyList(String userId){
		List<Hobby> hobbyList = new ArrayList();
		List<String> hobbyNameList = new ArrayList();
		String sql="select user_id userId ,d_id dId from hobby where user_id ='"+userId+"'";
		try {
			hobbyList = qr.query(conn, sql,  new BeanListHandler<Hobby>(Hobby.class));
			System.out.println(hobbyList);
			if(hobbyList==null) {
				return hobbyNameList;
			}
			for (Hobby hobby : hobbyList) {
				String sql1="select d_id dId, d_name dName,d_aver_score dAverScore from department where d_id ='"+hobby.getdId()+"'";
				Department department = qr.query(conn, sql1, new BeanHandler<Department>(Department.class));
				hobbyNameList.add(department.getdName());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return hobbyNameList;
	}
}
