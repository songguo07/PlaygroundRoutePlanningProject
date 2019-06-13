package com.sg.forestage.user.entity;

public class HobbyLog {

	private String id;
	private String userId;
	private String dId;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
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
	@Override
	public String toString() {
		return "HobbyLog [id=" + id + ", userId=" + userId + ", dId=" + dId + "]";
	}
	
	
	
}
