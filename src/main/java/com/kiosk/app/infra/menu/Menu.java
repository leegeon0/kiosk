package com.kiosk.app.infra.menu;

public class Menu {
	
	private Integer seq;
	private String menuName;
	private String menuPrice;
	private Integer category;
	private Integer delNy;
	private Integer soldOutNy;

	
	
//	검색
	private Integer shOption;
	private String shKeyword;
//	검색
	
	
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
	}
	public String getMenuName() {
		return menuName;
	}
	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}
	public String getMenuPrice() {
		return menuPrice;
	}
	public void setMenuPrice(String menuPrice) {
		this.menuPrice = menuPrice;
	}
	public Integer getCategory() {
		return category;
	}
	public void setCategory(Integer category) {
		this.category = category;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public Integer getSoldOutNy() {
		return soldOutNy;
	}
	public void setSoldOutNy(Integer soldOutNy) {
		this.soldOutNy = soldOutNy;
	}
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public String getShKeyword() {
		return shKeyword;
	}
	public void setShKeyword(String shKeyword) {
		this.shKeyword = shKeyword;
	}
	
	
}
