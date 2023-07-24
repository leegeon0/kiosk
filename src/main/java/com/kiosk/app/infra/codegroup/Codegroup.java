package com.kiosk.app.infra.codegroup;

public class Codegroup {
	private String codegroupSeq;
	private String categoryName;
	private String delNy;

	
//	-------
	public String getCodegroupSeq() {
		return codegroupSeq;
	}
	public void setCodegroupSeq(String codeGroupSeq) {
		this.codegroupSeq = codeGroupSeq;
	}

	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getDelNy() {
		return delNy;
	}
	public void setDelNy(String delNy) {
		this.delNy = delNy;
	}
}
