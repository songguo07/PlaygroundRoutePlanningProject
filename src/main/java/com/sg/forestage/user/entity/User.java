package com.sg.forestage.user.entity;

/**
 * 用户实体类
 */
public class User {
	
	private String userId;
	private String userTelno;
	private String userNickname;
	private int userAge;
	private int userGender;
	private String userPassword;
	private String userImage;
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserTelno() {
		return userTelno;
	}
	public void setUserTelno(String userTelno) {
		this.userTelno = userTelno;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public int getUserAge() {
		return userAge;
	}
	public void setUserAge(int userAge) {
		this.userAge = userAge;
	}
	public int getUserGender() {
		return userGender;
	}
	public void setUserGender(int userGender) {
		this.userGender = userGender;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserImage() {
		return userImage;
	}
	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", userTelno=" + userTelno + ", userNickname=" + userNickname + ", userAge="
				+ userAge + ", userGender=" + userGender + ", userPassword=" + userPassword + ", userImage=" + userImage
				+ "]";
	}
	
	
}
