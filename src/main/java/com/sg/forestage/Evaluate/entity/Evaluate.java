package com.sg.forestage.evaluate.entity;

/**
 * 用户实体类
 */
public class Evaluate {
	
	private String userId;
	private String dId;
	private String e_Evaluate;
	private float e_Score;
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getDId() {
		return dId;
	}
	public void setDId(String dId) {
		this.dId = dId;
	}
	public Float getEscore() {
		return e_Score;
	}
	public void setEscore(Float score) {
		this.e_Score = score;
	}
	public String getEvaluate() {
		return e_Evaluate;
	}
	public void setEvaluate(String s) {
		this.e_Evaluate = s;
	}
	
	
}
