package com.sg.forestage.user.service;

import java.util.List;
import java.util.Map;

import com.sg.backstage.ser.entity.Consult;
import com.sg.forestage.user.entity.Evaluate;
import com.sg.forestage.user.entity.Hobby;
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
	
	/**
	 * 获得爱好项目
	 *
	 * @author 李银霞
	 */
	public List<String> getHobbyList(String userId);
	
	/**
	 * 用户退出时，清除数据库中此次用户存的爱好
	 *
	 * @author 李银霞
	 */
	public int deleteAllHobbyByUserId(String userId);
	
	/**
	 * 为用户做出推荐
	 *
	 * @author 李银霞
	 */
	public Map<String,int[]> getUsersHobby(String userId);
	
	/**
	 * 获得与客服对话
	 */
	public List<Consult> getAnswer(String userId) ;
	
	/**
	 * 增加用户对话
	 * 
	 * @author QYJ
	 */
	public boolean insertQuestion(String userId,String content);
	/**
	 * 获得相似用户的已经玩过的项目id
	 *
	 * @author 李银霞
	 */
	public List<String> getSimHobbyId(String nowUserid,String userId);
	
}
