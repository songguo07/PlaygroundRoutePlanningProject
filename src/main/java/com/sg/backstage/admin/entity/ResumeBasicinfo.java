package com.sg.backstage.admin.entity;
import java.util.Date;
public class ResumeBasicinfo {
	private String user_id; 
	private String user_telno;
	private String user_nickname;
	private String user_age;
	private String user_gender;
	private String user_password;
	public ResumeBasicinfo() {
	}

	public String getuser_id() {
		return user_id;
	}
	public void setuser_id(String id) {
		this.user_id = id;
	}
	public String getuser_telno() {
		return user_telno;
	}
	public void setuser_telno(String user_telno) {
		this.user_telno = user_telno;
	}
	public String getuser_nickname() {
		return user_nickname;
	}
	public void setuser_age(String user_age) {
		this.user_age = user_age;
	}
	public String getuser_age() {
		return user_age;
	}
	public void setuser_gender(String user_gender) {
		this.user_gender = user_gender;
	}
	public String getuser_gender() {
		return user_gender;
	}
	public void setuser_password(String user_password) {
		this.user_password = user_password;
	}
	public String getuser_password() {
		return user_password;
	}
	public void setuser_nickname(String user_nickname) {
		this.user_nickname= user_nickname;
	}
	/**
	public String gettel() {
		return tel;
	}
	public void settel(String tel) {
		this.tel = tel;
	}

	public String getHeadShot() {
		return headShot;
	}

	public void setHeadShot(String headShot) {
		this.headShot = headShot;
	}**/
	public ResumeBasicinfo(String user_id,String user_telno, String user_nickname,
			String user_age, String user_gender, String user_password) {
		super();
		this.user_id = user_id;
		this.user_telno = user_telno;
		this.user_nickname = user_nickname;
		this.user_age = user_age;
		this.user_gender = user_gender;
		this.user_password=user_password;
	}
	
}

