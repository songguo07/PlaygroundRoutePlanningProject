package com.sg.forestage.department.dao;

import com.sg.forestage.user.entity.User;

/**
 * 娱乐设施逻辑层接口
 */
public interface DepartmentDao {

	public int insertHobby(String selectProjectName, User user);
}
