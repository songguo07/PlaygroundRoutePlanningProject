package com.sg.forestage.department.service;

import com.sg.backstage.department.entity.Department;

/**
 * 娱乐设施服务层接口
 */
public interface DepartmentService {
	
	/**
	 * 增加娱乐设施
	 */
	public int doAdd(Department department);
	
	/**
	 * 修改娱乐设施
	 */
	public int doAlter(String d_id,String d_name,Float d_aver_score,String d_des,String type_id);
}
