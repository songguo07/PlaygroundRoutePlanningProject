package com.sg.forestage.department.dao;

import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.sg.common.util.DbUtil;
import com.sg.forestage.department.entity.Department;
import com.sg.forestage.user.entity.User;

/**
 * 娱乐设施逻辑层实现类
 */
public class DepartmentDaoImpl implements DepartmentDao{

	Connection conn=DbUtil.getDBConn();
	QueryRunner qr=new QueryRunner();
	/**
	 * 插入用户喜好项目
	 *
	 *
	 * @author 李银霞
	 */
	@Override
	public int insertHobby(String selectProjectName,User user) {
		String sql="select d_id dId from department where d_name='"+selectProjectName+"'";
		Department department;
		int row=0;
		try {
			department = qr.query(conn, sql,new BeanHandler<Department>(Department.class));
			String dId=department.getdId();
			String userId = user.getUserId();
			System.out.println("DepartmentImpl--->insertHobby():user.userId="+userId+",department.dId:"+dId);
			String sql1="insert into hobby value(?,?)";
			String params[]= {userId,dId};
			try {
				row = qr.update(conn, sql1, params);
				DbUtils.closeQuietly(conn);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		
		return row;
	}

}
