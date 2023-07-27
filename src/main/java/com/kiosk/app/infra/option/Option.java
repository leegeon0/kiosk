package com.kiosk.app.infra.option;

public class Option {
	
	private Integer seq;
	private String optionName;
	private String optionPrice;
	private Integer menuSeq;
	
	
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
	public String getOptionName() {
		return optionName;
	}
	public void setOptionName(String optionName) {
		this.optionName = optionName;
	}
	public String getOptionPrice() {
		return optionPrice;
	}
	public void setOptionPrice(String optionPrice) {
		this.optionPrice = optionPrice;
	}
	public Integer getMenuSeq() {
		return menuSeq;
	}
	public void setMenuSeq(Integer menuSeq) {
		this.menuSeq = menuSeq;
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
