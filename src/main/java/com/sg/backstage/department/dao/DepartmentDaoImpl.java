package com.sg.backstage.department.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.taglibs.standard.tag.common.sql.DataSourceUtil;

import com.sg.backstage.department.entity.Department;
import com.sg.common.util.DbUtil;

/**
 * 娱乐设施逻辑层实现类
 */
public class DepartmentDaoImpl implements DepartmentDao{
	
	Connection conn=DbUtil.getDBConn();
	QueryRunner qr=new QueryRunner();
	
	/**
	 * 增加娱乐设施
	 */
	@Override
	public int doAdd(Department department) {
		String sql="insert into department(d_id,d_name,d_aver_score,d_des,type_id) values(?,?,?,?,?)";
		String [] param= {department.getD_id(),department.getD_name(),Float.toString(department.getD_aver_score()),department.getD_des(),department.getType_id()};
		int row=0;
		try {
			row = qr.update(conn, sql,param);
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return row;
	}

	

    // 查询数据库中所有的用户信息.
    public List<Department> findAll() {
        // 2.创建sql语句.
        String sql = "select * from department ";
        // 3.使用query方法执行sql语句.
        try {
            return qr.query(conn,sql, new BeanListHandler<Department>(Department.class));
        } catch (SQLException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }
    }
    

      // 根据条件 , 查询数据.
    public List<Department> selectById(String d_id, String d_name) {
        // 创建sql语句.
        String sql = "select * from department where 1=1 ";

        // 创建一个集合 , 对两个条件进行判断 , 否和就添加进去.
        List list = new ArrayList();
        // 如果查询条件不为空 , 就添加查询条件.
        if (d_id!=null&&d_id.trim().length()>0){
            sql+=" and d_id=? ";
            list.add(d_id);
        }

        if(d_name!=null&&d_name.trim().length()>0){
            sql+=" and d_name=? ";
            list.add(d_name);
        }
        // 执行sql
        try {
            return qr.query(conn,sql,new BeanListHandler<Department>(Department.class),list.toArray());
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
    
    
    public void deleById(String d_id) {
        // 创建sql语句.
        String sql = "delete from department where d_id=? ";
        System.out.println(sql);
        System.out.println("3");
        // 执行sql
        try {
            qr.update(conn,sql,d_id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }


	/**
	 * 修改娱乐设施
	 */
	@Override
	public int doAlter(String d_id,String d_name,Float d_aver_score,String d_des,String type_id) {
		String sql = "update department set d_name='"+d_name+"',d_aver_score='"+d_aver_score+"',d_des='"+d_des+"',type_id='"+type_id+"' where d_id='"+d_id+"'";
		System.out.println(sql);
		try {
			return qr.update(conn, sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	
	
}
