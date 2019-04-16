package com.sg.backstage.department.service;

import java.sql.SQLException;
import java.util.List;

import com.sg.backstage.department.entity.Department;

/**
 * 娱乐设施服务层接口
 */
public interface DepartmentService {

	int doAdd(Department department);

	int doAlter(String d_id, String d_name, Float d_aver_score, String d_des,String type_id);
	
	public List<Department> findAll();
	public List<Department> selectById(String d_id, String d_name);

	public void deleById(String d_id);

	//public List<Department> selectById(String d_id);
	//public List<Department> doAll();

}
