package com.sg.forestage.Evaluate.service;

import com.sg.common.util.MD5Util;
import com.sg.forestage.Evaluate.dao.EvaluateDao;
import com.sg.forestage.Evaluate.dao.EvaluateDaoImpl;
import com.sg.forestage.Evaluate.entity.Evaluate;

/**
 * 评论服务层实现类
 *
 */
public class EvaluateServiceImpl implements EvaluateService{

	private EvaluateDao EvaluateDao=new EvaluateDaoImpl();
	
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
		return EvaluateDao.doAdd(ee);
	}

	

}
