package com.sg.backstage.ser.dao;

import java.util.List;

import com.sg.backstage.ser.entity.Consult;

/**
 * 客服业务逻辑层接口
 */
public interface SerDao {

	public List<Consult> getRes();
	public boolean insertAnswer(String userId,String content,String time,String consultId);
	public void getUserQes(String userId);
}
