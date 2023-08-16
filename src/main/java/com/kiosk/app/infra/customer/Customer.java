package com.kiosk.app.infra.customer;

public class Customer {
	private String seq;
	private String phoneNum;

	private String countStamp;
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}

	
//	----------------------------------------
	
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getCountStamp() {
		return countStamp;
	}

	public void setCountStamp(String countStamp) {
		this.countStamp = countStamp;
	}

//    public boolean idCheck() {
//    }
}
