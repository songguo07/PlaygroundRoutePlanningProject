package com.sg.forestage.user.service;

import com.sg.forestage.user.entity.Evaluate;
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
	
	/**
	 * 用户忘记密码
	 */
	public int doChangePassword(String userTelno,String userPassword);
	
	/**
	 * 添加评论
	 */
	public int doAdd(Evaluate ee);
	
	
}
