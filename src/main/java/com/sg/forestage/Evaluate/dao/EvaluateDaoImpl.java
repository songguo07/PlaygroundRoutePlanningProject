package com.sg.forestage.Evaluate.dao;


import java.sql.Connection;
import java.sql.SQLException;

import org.apache.commons.dbutils.DbUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.sg.common.util.DbUtil;
import com.sg.forestage.Evaluate.entity.Evaluate;
import com.sg.forestage.user.entity.User;

/**
 * 评论逻辑层实现类
 */
public class EvaluateDaoImpl implements EvaluateDao{

	Connection conn=DbUtil.getDBConn();
	QueryRunner qr=new QueryRunner();
	/**
	 * 添加评论评分
	 * @author 高小惠
	 */
	@Override
	public int doAdd(Evaluate ee) {
		String sql="insert into evaluate(user_id,d_id,e_evaluate,e_score) value(?,?,?,?)";
		float score=ee.getEscore();
		String [] param= {ee.getUserId(),ee.getDId(),ee.getEvaluate()};
		int row=0;
		try {
			row = qr.update(conn, sql,param,param,score);
			DbUtils.closeQuietly(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return row;
	}
	

}
