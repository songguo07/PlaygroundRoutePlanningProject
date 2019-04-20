package com.sg.backstage.ser.entity;

import java.util.Date;

/*
 * 客服
 */
public class Ser {

	private String serId;
	private String serName;
	private int SerSex;
	private String serCard;
	private String serPassword;
	private Date serCheckin;
	private String serImage;
	
	public String getSerId() {
		return serId;
	}
	public void setSerId(String serId) {
		this.serId = serId;
	}
	public String getSerName() {
		return serName;
	}
	public void setSerName(String serName) {
		this.serName = serName;
	}
	public int getSerSex() {
		return SerSex;
	}
	public void setSerSex(int serSex) {
		SerSex = serSex;
	}
	public String getSerCard() {
		return serCard;
	}
	public void setSerCard(String serCard) {
		this.serCard = serCard;
	}
	public String getSerPassword() {
		return serPassword;
	}
	public void setSerPassword(String serPassword) {
		this.serPassword = serPassword;
	}
	public Date getSerCheckin() {
		return serCheckin;
	}
	public void setSerCheckin(Date serCheckin) {
		this.serCheckin = serCheckin;
	}
	public String getSerImage() {
		return serImage;
	}
	public void setSerImage(String serImage) {
		this.serImage = serImage;
	}
	@Override
	public String toString() {
		return "Ser [serId=" + serId + ", serName=" + serName + ", SerSex=" + SerSex + ", serCard=" + serCard
				+ ", serPassword=" + serPassword + ", serCheckin=" + serCheckin + ", serImage=" + serImage + "]";
	}
	
	
}
