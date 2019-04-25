package com.sg.forestage.user.dao;

import java.util.List;

import com.sg.forestage.user.entity.Evaluate;
import com.sg.forestage.user.entity.Hobby;
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
	
	/**
	 * 用户忘记密码
	 */
	public int doChangePassword(String userTelno,String userPassword);
	/**
	 * 添加评论
	 */
	public int doAdd(Evaluate ee);
	
	/**
	 * 获得用户爱好
	 */
	public List<String> getHobbyList(String userId);
	
	/**
	 * 用户退出时，清除数据库中此次用户存的爱好
	 *
	 * @author 李银霞
	 */
	public int deleteAllHobbyByUserId(String userId);
	
}
