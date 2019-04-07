package com.sg.forestage.user.dao;

import com.sg.forestage.user.entity.User;

/**
 * 用户逻辑层接口
 */
public interface UserDao {

	/**
	 * 注册用户
	 */
	public int doRegist(User user);
	
	/**
	 * 用户登陆
	 */
	public User doLogin(String userTelno,String userPassword);
}
