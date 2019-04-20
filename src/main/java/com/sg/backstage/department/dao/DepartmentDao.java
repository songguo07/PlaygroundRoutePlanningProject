package com.sg.backstage.department.dao;

import java.sql.SQLException;
import java.util.List;

import com.sg.backstage.department.entity.Department;

/**
 * 娱乐设施逻辑层接口
 */
public interface DepartmentDao {
	/**
	 * 增加娱乐设施
	 */
	public int doAdd(Department department);
	
	/**
	 * 修改娱乐设施
	 */
	public int doAlter(String d_id,String d_name,Float d_aver_score,String d_des,String type_id);

	
	 public List<Department> findAll();
	 //public List<Department> selectById(String d_id);
	 public List<Department> selectById(String d_id, String d_name);
	 public void deleById(String d_id);
	//public List<Department> doAll() throws SQLException;
	
	

}
