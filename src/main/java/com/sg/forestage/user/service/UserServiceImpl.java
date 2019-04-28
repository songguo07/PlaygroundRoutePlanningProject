package com.sg.forestage.user.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.sg.backstage.ser.entity.Consult;
import com.sg.common.util.MD5Util;
import com.sg.forestage.user.entity.Evaluate;
import com.sg.forestage.user.entity.Hobby;
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
		System.out.println("UserServiceImpl:doLogin(), Md5 pwd:" + userPassword);
		return userDao.doLogin(userTelno, userPassword);
	}

	/**
	 * 用户修改密码
	 *
	 *
	 * @author 李银霞
	 */
	@Override
	public int doChangePassword(String userTelno, String userPassword) {
		userPassword = MD5Util.getInstance().getMD5(userPassword);
		return userDao.doChangePassword(userTelno, userPassword);
	}

	/**
	 * 添加评论
	 *
	 *
	 * @author 高小惠
	 */
	@Override
	public int doAdd(Evaluate ee) {
		String evaluate = ee.getEvaluate();
		System.out.println(evaluate);
		return userDao.doAdd(ee);
	}

	/**
	 * 获得爱好项目List
	 *
	 *
	 * @author 李银霞
	 */
	@Override
	public List<String> getHobbyList(String userId) {
		userId = userId.trim();
		return userDao.getHobbyList(userId);
	}

	/**
	 * 用户退出时，清除数据库中此次用户存的爱好
	 *
	 * @author 李银霞
	 */
	@Override
	public int deleteAllHobbyByUserId(String userId) {
		userId = userId.trim();
		return userDao.deleteAllHobbyByUserId(userId);
	}

	/**
	 * 获得用户与客服的对话
	 * 
	 */
	@Override
	public List<Consult> getAnswer(String userId) {
		return userDao.getAnswer(userId);
	}

	/**
	 * 增加用户对话
	 * 
	 * @author QYJ
	 */
	@Override
	public boolean insertQuestion(String userId, String content) {
		String consultId=UUID.randomUUID().toString();
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String dateTime = df.format(new Date());
		return userDao.insertQuestion(userId, content, consultId, dateTime);
	}

	
}
