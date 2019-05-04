package com.sg.forestage.department.dao;

import java.util.List;

import com.sg.forestage.user.entity.Evaluate;
import com.sg.forestage.user.entity.User;

/**
 * 娱乐设施逻辑层接口
 */
public interface DepartmentDao {

	/**
	 * 添加用户爱好项目
	 *
	 * @author 李银霞
	 */
	public int insertHobby(String selectProjectName, User user);
	
	/**
	 * 获得特定项目的历史评分评价
	 *
	 * @author 李银霞
	 */
	public List<Evaluate> getDepartmentEvaluByDId(String dId);
}
