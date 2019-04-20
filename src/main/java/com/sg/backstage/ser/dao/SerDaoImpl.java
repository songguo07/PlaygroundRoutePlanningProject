package com.sg.backstage.ser.dao;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.sg.backstage.ser.entity.Consult;
import com.sg.common.util.DbUtil;

/*
 * 客服业务逻辑层实现类
 */
public class SerDaoImpl implements SerDao {
	
	Connection conn=null;
	QueryRunner qr=new QueryRunner();

	@Override
	public List<Consult> getRes() {
		String sql="select consult_id as consultId,listen_id as listenId,say_id as sayId,content,flag,conDate,user_nickName as userName from consult,user where consult.listen_id=user.user_id or consult.say_id=user.user_id and consult.flag='0' group by conDate asc";
		List<Consult> conList = new ArrayList<Consult>();
		conn = DbUtil.getDBConn();
		try {
			conList = qr.query(conn,sql, new  BeanListHandler<Consult>(Consult.class));
			DbUtil.close(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conList;
	}

	@Override
	public boolean insertAnswer(String userId, String content, String time, String consultId) {
		String sql = "insert into consult (consult_id,listen_id,content,flag,condate) values (?,?,?,'0',?)";
		String params[] = {consultId,userId,content,time};
		conn = DbUtil.getDBConn();
		int row=0;
		try {
			row = qr.update(conn, sql,params);
			DbUtil.close(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return row>0;
	}

	@Override
	public void getUserQes(String userId) {
		String sql = "update consult set flag='1' where say_id='"+userId+"'";
		conn=DbUtil.getDBConn();
		try {
			qr.update(conn, sql);
			DbUtil.close(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
