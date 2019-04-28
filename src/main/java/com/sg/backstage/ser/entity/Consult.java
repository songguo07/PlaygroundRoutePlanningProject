package com.sg.backstage.ser.entity;

import java.util.Date;

/**
 * 咨询客服信息实体类
 * 
 * @author QYJ
 *
 */
public class Consult {

	private String consult_id;
	private String listen_id;
	private String say_id;
	private String content;
	private String flag;
	private String conDate;
	public String getConsult_id() {
		return consult_id;
	}
	public void setConsult_id(String consult_id) {
		this.consult_id = consult_id;
	}
	public String getListen_id() {
		return listen_id;
	}
	public void setListen_id(String listen_id) {
		this.listen_id = listen_id;
	}
	public String getSay_id() {
		return say_id;
	}
	public void setSay_id(String say_id) {
		this.say_id = say_id;
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
	public String getConDate() {
		return conDate;
	}
	public void setConDate(String conDate) {
		this.conDate = conDate;
	}
	
}
