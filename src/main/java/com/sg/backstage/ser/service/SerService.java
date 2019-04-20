package com.sg.backstage.ser.service;

import java.util.List;
import java.util.Map;

import com.sg.backstage.ser.entity.Consult;
import com.sg.backstage.ser.entity.ConsultLength;

/*
 * 客服服务层接口
 */
public interface SerService {

	public List<Consult> getRes();
	public Map<String,ConsultLength> getUserMap(List<Consult> conList);
	public List<Consult> getUserQes(String userId,List<Consult> conList);
	public boolean insertAnswer(String userId,String content);
}
