package com.sg.forestage.user.dao;

import java.util.List;
import java.util.Map;

import com.sg.backstage.ser.entity.Consult;
import com.sg.forestage.user.entity.Evaluate;
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
	
	/**
	 * 获得相似用户的已经玩过的项目id
	 *
	 * @author 李银霞
	 */
	public List<String> getSimHobbyId(String nowUserid,String userId);
	/**
	 * 为用户做出推荐
	 *
	 * @author 李银霞
	 */
	public Map<String,int[]> getUsersHobby(String userId);
	
	/**
	 * 获得客服回答的问题
	 * 
	 * @author QYJ
	 */
	public List<Consult> getAnswer(String userId);
	
	/**
	 * 增加用户对话
	 * 
	 * @author QYJ
	 */
	public boolean insertQuestion(String userId,String content,String consultId,String dateTime);
	
}
