package com.sg.forestage.user.service;

import com.sg.common.util.MD5Util;
import com.sg.forestage.user.dao.UserDao;
import com.sg.forestage.user.dao.UserDaoImpl;
import com.sg.forestage.user.entity.User;

/**
 * 用户服务层实现类
 *
 */
public class UserServiceImpl implements UserService{

	private UserDao userDao=new UserDaoImpl();
	
	/**
	 * 用户注册
	 *
	 *
	 * @author 李银霞
	 */
	@Override
	public int doRegist(User user) {
		String userPassword = user.getUserPassword();
		userPassword = MD5Util.getInstance().getMD5(userPassword);
		user.setUserPassword(userPassword);
		return userDao.doRegist(user);
	}

	/**
	 * 用户登陆
	 *
	 *
	 * @author 李银霞
	 */
	@Override
	public User doLogin(String userTelno,String userPassword) {
		userPassword = MD5Util.getInstance().getMD5(userPassword);
		System.out.println(userPassword);
		return userDao.doLogin(userTelno, userPassword);
	}

}
