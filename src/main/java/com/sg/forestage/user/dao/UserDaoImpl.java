package com.sg.forestage.user.dao;


import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.sg.backstage.ser.entity.Consult;
import com.sg.common.util.DbUtil;
import com.sg.forestage.department.entity.Department;
import com.sg.forestage.user.entity.Evaluate;
import com.sg.forestage.user.entity.Hobby;
import com.sg.forestage.user.entity.User;

/**
 * 用户逻辑层实现类
 */
public class UserDaoImpl implements UserDao{

	QueryRunner qr=new QueryRunner(DbUtil.getDataSource());
	/**
	 * 注册功能
	 *
	 *
	 * @author 李银霞
	 */
	@Override
	public int doRegist(User user) {
		String sql="insert into user(user_id,user_telno,user_nickname,user_password) value(?,?,?,?)";
		String [] param= {user.getUserId(),user.getUserTelno(),user.getUserNickname(),user.getUserPassword()};
		int row=0;
		try {
			row = qr.update(sql,param);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return row;
	}
	/**
	 * 登陆功能
	 *
	 *
	 * @author 李银霞
	 */
	@Override
	public User doLogin(String userTelno, String userPassword) {
		String sql = "select user_id userId,user_telno userTelno,user_nickname userNickname,user_age userAge,user_gender userGender,user_password userPassword ,user_image userImage from user where user_telno = '"+userTelno+"'and user_password = '"+userPassword+"'";
		System.out.println("UserDaoImpl:doLogin(), sql:" + sql);
		User user=null;
		try {
			user = qr.query(sql,new BeanHandler<User>(User.class));
			System.out.println("UserDaoImpl:doLogin(), user:" + user);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}
	/**
	 * 修改密码
	 *
	 *
	 * @author 李银霞
	 */
	@Override
	public int doChangePassword(String userTelno, String userPassword) {
		String sql="update user set user_password='"+userPassword+"' where user_telno='"+userTelno+"'";
		System.out.println(sql);
		try {
			return qr.update(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	/**
	 * 添加评分评论
	 * 
	 * @author 高小惠
	 */
	@Override
	public int doAdd(Evaluate ee) {
		String sql="delete from evaluate where d_id='"+ee.getdId()+"' and user_id='"+ee.getUserId()+"'";
		System.out.println("删除原来的评价："+sql);
		Object [] param= {ee.getUserId(),ee.getdId(),ee.geteEvaluate(),ee.geteScore()};
		int row=0;
		try {
			System.out.println("原来表中是否含有评价------->>："+qr.update(sql));
			sql="insert into evaluate(user_id,d_id,e_evaluate,e_score) value(?,?,?,?)";
			return  qr.update(sql,param);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return row;
	}
	
	/**
	 * 获得用户的所有爱好
	 * 
	 * @author 李银霞
	 */
	public List<String> getHobbyList(String userId){
		List<Hobby> hobbyList = new ArrayList<Hobby>();
		List<String> hobbyNameList = new ArrayList<String>();
		String sql="select user_id userId ,d_id dId from hobby where user_id ='"+userId+"'";
		try {
			hobbyList = qr.query(sql,  new BeanListHandler<Hobby>(Hobby.class));
			System.out.println(hobbyList);
			if(hobbyList==null) {
				return hobbyNameList;
			}
			for (Hobby hobby : hobbyList) {
				String sql1="select d_id dId, d_name dName,d_aver_score dAverScore from department where d_id ='"+hobby.getdId()+"'";
				Department department = qr.query(sql1, new BeanHandler<Department>(Department.class));
				hobbyNameList.add(department.getdName());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return hobbyNameList;
	}
	/**
	 * 用户退出时，清除数据库中此次用户存的爱好
	 *
	 *
	 * @author 李银霞
	 */
	@Override
	public int deleteAllHobbyByUserId(String userId) {
		String sql="delete from hobby where user_id=?";
		try {
			return qr.update(sql,userId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	/**
	 * 获得客服的回答
	 * 
	 * @author QYJ
	 */
	@Override
	public List<Consult> getAnswer(String userId) {
		String sql = "select * from consult where listen_id='"+userId+"' or say_id='"+userId+"' group by conDate asc";
		List<Consult> consultList= new ArrayList<Consult>();
		try {
			consultList=qr.query(sql,  new BeanListHandler<Consult>(Consult.class));
			sql="update consult set flag='1' where listen_id='"+userId+"'";
			qr.update(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return consultList;
	}
	
	@Override
	public boolean insertQuestion(String userId, String content,String consultId,String dateTime) {
		String sql = "insert into consult (consult_id,say_id,content,flag,condate) values ('"+consultId+"','"+userId+"','"+content+"','0','"+dateTime+"')";
		int row=0;
		System.out.println(sql);
		try {
			row=qr.update(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return row>0;
	}
}
