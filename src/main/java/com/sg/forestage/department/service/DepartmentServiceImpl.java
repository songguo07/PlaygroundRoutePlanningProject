package com.sg.forestage.department.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.sg.forestage.department.dao.DepartmentDao;
import com.sg.forestage.department.dao.DepartmentDaoImpl;
import com.sg.forestage.user.entity.Evaluate;
import com.sg.forestage.user.entity.User;

/**
 * 娱乐设施服务层实现类
 *
 */
public class DepartmentServiceImpl implements DepartmentService{

	DepartmentDao departmentDao=new DepartmentDaoImpl();
	/**
	 * 添加用户爱好项目
	 *
	 *
	 * @author 李银霞
	 */
	@Override
	public int insertHobby(String selectProjectName, User user) {
		selectProjectName = selectProjectName.trim();
		return departmentDao.insertHobby(selectProjectName, user);
	}
	
	/**
	 * 获得特定项目的历史评分评价
	 *
	 * @author 李银霞
	 */
	@Override
	public List<Evaluate> getDepartmentEvaluByDId(String dId) {
		dId=dId.trim();
		return departmentDao.getDepartmentEvaluByDId(dId);
	}


}
