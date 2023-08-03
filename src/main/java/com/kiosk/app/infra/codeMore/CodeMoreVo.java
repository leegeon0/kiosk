package com.kiosk.app.infra.codeMore;

import com.kiosk.app.infra.code.Code;
import com.kiosk.app.infra.codegroup.Codegroup;

public class CodeMoreVo {
	private Code code;
	private Codegroup codegroup;
	
//	----------
	public Code getCode() {
		return code;
	}
	public void setCode(Code code) {
		this.code = code;
	}
	public Codegroup getCodegroup() {
		return codegroup;
	}
	public void setCodegroup(Codegroup codegroup) {
		this.codegroup = codegroup;
	}
	
}
