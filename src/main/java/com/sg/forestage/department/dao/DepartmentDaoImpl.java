package com.sg.forestage.department.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.sg.common.util.DbUtil;
import com.sg.forestage.department.entity.Department;
import com.sg.forestage.user.entity.Evaluate;
import com.sg.forestage.user.entity.User;

/**
 * 娱乐设施逻辑层实现类
 */
public class DepartmentDaoImpl implements DepartmentDao{

	
	QueryRunner qr=new QueryRunner(DbUtil.getDataSource());
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
			department = qr.query(sql,new BeanHandler<Department>(Department.class));
			String dId=department.getdId();
			String userId = user.getUserId();
			System.out.println("DepartmentImpl--->insertHobby():user.userId="+userId+",department.dId:"+dId);
			String sql1="insert into hobby_log value(?,?,?)";
			String params[]= {UUID.randomUUID().toString(),userId,dId};
			try {
				row = qr.update(sql1, params);
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return row;
	}
	/**
	 * 获得特定项目的历史评分评价
	 *
	 *
	 * @author 李银霞
	 */
	@Override
	public List<Evaluate> getDepartmentEvaluByDId(String dId) {
		List<Evaluate> evaluateList = new ArrayList();
		String sql="select user_id userId,d_id dId ,e_score eScore,e_evaluate eEvaluate from evaluate where d_id='"+dId+"'";
		System.out.println("获得特定项目的历史评分评价   执行的sql语句："+sql);
		try {
			evaluateList = qr.query(sql, new BeanListHandler<Evaluate>(Evaluate.class));
			System.out.println("******************>项目的评分评价类：");
			for (Evaluate evaluate : evaluateList) {
				System.out.println("eavluate:"+evaluate);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return evaluateList;
	}
	
	@Override
	public String getDepIdByName(String depName) {
		String sql = "select d_id dId,d_name dName from department where d_name='"+depName+"'";
		System.out.println(sql);
		try {
			Department department = qr.query(sql, new BeanHandler<Department>(Department.class));
			System.out.println("DesServlet根据项目名获取项目id："+department);
			return department.getdId();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	/**
	 * 获得id获得项目名字
	 *
	 *
	 * @author 李银霞
	 */
	@Override
	public String getDepNameById(String dId) {
		String sql = "select d_id dId,d_name dName from department where d_id='"+dId+"'";
		System.out.println(sql);
		try {
			Department department = qr.query(sql, new BeanHandler<Department>(Department.class));
			System.out.println("DesServlet根据项目名获取项目name："+department);
			return department.getdName();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
