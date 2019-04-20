package com.sg.forestage.department.dao;

import javax.servlet.http.HttpSession;

/**
 * 娱乐设施逻辑层接口
 */
public interface DepartmentDao {

	public int insertHobby(String selectProjectName,HttpSession session);
}
