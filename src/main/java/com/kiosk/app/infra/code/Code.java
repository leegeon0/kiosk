package com.kiosk.app.infra.code;

import java.util.ArrayList;
import java.util.List;

public class Code {
	private String seq;
	private String name;
	private String delNy;
	private String codegroup_seq;
	private String categoryName;
	private String codeSeq;
	private String codeName;
	private String codeDelNy;
	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDelNy() {
		return delNy;
	}
	public void setDelNy(String delNy) {
		this.delNy = delNy;
	}
	public String getCodegroup_seq() {
		return codegroup_seq;
	}
	public void setCodegroup_seq(String codegroup_seq) {
		this.codegroup_seq = codegroup_seq;
	} 
	
	public static List<Code> codeArrayList = new ArrayList<Code>();


	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public String getCodeSeq() {
		return codeSeq;
	}
	public void setCodeSeq(String codeSeq) {
		this.codeSeq = codeSeq;
	}
	public String getCodeName() {
		return codeName;
	}
	public void setCodeName(String codeName) {
		this.codeName = codeName;
	}
	public String getCodeDelNy() {
		return codeDelNy;
	}
	public void setCodeDelNy(String codeDelNy) {
		this.codeDelNy = codeDelNy;
	}
	
	
//	------
	
	
	 
}
