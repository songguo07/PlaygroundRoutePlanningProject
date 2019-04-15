package com.sg.backstage.ser.entity;

import java.util.Date;

/**
 * 咨询客服信息实体类
 * 
 * @author QYJ
 *
 */
public class Consult {

	private String consultId;
	private String ListenId;
	private String sayId;
	private String content;
	private String flag;
	private String conDate;
	private String userName;
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getConDate() {
		return conDate;
	}
	public void setConDate(String conDate) {
		this.conDate = conDate;
	}
	public String getConsultId() {
		return consultId;
	}
	public void setConsultId(String consultId) {
		this.consultId = consultId;
	}
	public String getListenId() {
		return ListenId;
	}
	public void setListenId(String listenId) {
		ListenId = listenId;
	}
	public String getSayId() {
		return sayId;
	}
	public void setSayId(String sayId) {
		this.sayId = sayId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}
	
	
}
