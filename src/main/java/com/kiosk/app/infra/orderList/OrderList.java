package com.kiosk.app.infra.orderList;

public class OrderList {
	private String seq;
	private String menuQuantity;
	private String totalPrice;
	private String orderTime;
	private String menu_seq;
	
	
//	----------------------------------------
	

	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getMenuQuantity() {
		return menuQuantity;
	}
	public void setMenuQuantity(String menuQuantity) {
		this.menuQuantity = menuQuantity;
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
	public String getMenu_seq() {
		return menu_seq;
	}
	public void setMenu_seq(String menu_seq) {
		this.menu_seq = menu_seq;
	}
}
