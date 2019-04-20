package com.sg.forestage.department.service;

import javax.servlet.http.HttpSession;

/**
 * 娱乐设施服务层接口
 */
public interface DepartmentService {

	public int insertHobby(String selectProjectName,HttpSession session);
}
