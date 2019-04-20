package com.sg.backstage.department.entity;

/**
 * 娱乐设施实体类
 */
public class Department {
	
	private String d_id;
	private String d_name;
	private float d_aver_score;
	private String d_des;
	private String type_id;

	
	public String getD_id() {
		return d_id;
	}
	public void setD_id(String d_id) {
		this.d_id = d_id;
	}
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public float getD_aver_score() {
		return d_aver_score;
	}
	public void setD_aver_score(float d_aver_score) {
		this.d_aver_score = d_aver_score;
	}
	public String getD_des() {
		return d_des;
	}
	public void setD_des(String d_des) {
		this.d_des = d_des;
	}
	public String getType_id() {
		return type_id;
	}
	public void setType_id(String type_id) {
		this.type_id = type_id;
	}



}
