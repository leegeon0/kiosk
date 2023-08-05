package com.kiosk.app.infra.orderList;

public class OrderList {
	private String seq;
	private String totalPrice;
	private String orderTime;
	private String menuList_seq;
	
	
//	----------------------------------------
	

	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getOrderTime() {
		return orderTime;
	}
	public void setOrderTime(String orderTime) {
		this.orderTime = orderTime;
	}
	public String getMenuList_seq() {
		return menuList_seq;
	}
	public void setMenuList_seq(String menuList_seq) {
		this.menuList_seq = menuList_seq;
	}
	
}
