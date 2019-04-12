package com.sg.forestage.Evaluate.dao;

import com.sg.forestage.Evaluate.entity.Evaluate;

/**
 * 评论逻辑层接口
 */
public interface EvaluateDao {

	/**
	 * 添加评论
	 */
	public int doAdd(Evaluate ee);
	
	
	
}
