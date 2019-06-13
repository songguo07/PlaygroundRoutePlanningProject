package com.sg.forestage.user.entity;

/**
 * 用户实体类
 */
public class Evaluate {
	
	private String userId;
	private String dId;
	private String eEvaluate;
	private float eScore;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getdId() {
		return dId;
	}
	public void setdId(String dId) {
		this.dId = dId;
	}
	public String geteEvaluate() {
		return eEvaluate;
	}
	public void seteEvaluate(String eEvaluate) {
		this.eEvaluate = eEvaluate;
	}
	public float geteScore() {
		return eScore;
	}
	public void seteScore(float eScore) {
		this.eScore = eScore;
	}
	@Override
	public String toString() {
		return "Evaluate [userId=" + userId + ", dId=" + dId + ", eEvaluate=" + eEvaluate + ", eScore=" + eScore + "]";
	}
	
	
}
