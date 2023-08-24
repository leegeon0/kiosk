package com.kiosk.app.infra.star;

public class Star {
	
	private Integer starSeq;
	private Integer star;
	private String starDate;
	private Integer menu_seq;

	
	
	private String category;
	
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	

	public Integer getStarSeq() {
		return starSeq;
	}

	public void setStarSeq(Integer starSeq) {
		this.starSeq = starSeq;
	}

	public Integer getStar() {
		return star;
	}
	public void setStar(Integer star) {
		this.star = star;
	}
	public String getStarDate() {
		return starDate;
	}
	public void setStarDate(String starDate) {
		this.starDate = starDate;
	}

	public Integer getMenu_seq() {
		return menu_seq;
	}

	public void setMenu_seq(Integer menu_seq) {
		this.menu_seq = menu_seq;
	}

}
