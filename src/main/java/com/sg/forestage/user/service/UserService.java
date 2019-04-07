package com.sg.forestage.user.service;

import com.sg.forestage.user.entity.User;

/**
 * 用户服务层接口
 */
public interface UserService {

	/**
	 * 用户注册
	 */
	public int doRegist(User user);
	
	/**
	 * 用户登陆
	 */
	public User doLogin(String userTelno,String userPassword);
}
