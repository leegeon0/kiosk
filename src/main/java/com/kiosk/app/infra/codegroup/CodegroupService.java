package com.kiosk.app.infra.codegroup;

import java.util.List;

import com.kiosk.app.infra.codegroup.Codegroup;
import com.kiosk.app.infra.codegroup.CodegroupVo;

public interface CodegroupService {
	public int selectOneCount(CodegroupVo vo);
	
	public List<Codegroup>selectList(CodegroupVo vo);
	
	public Codegroup selectOne(CodegroupVo vo);
	
	public int update(Codegroup dto);
	
	public int delete(Codegroup dto);
	
	public int insert(Codegroup dto);
	
	public int uelete(Codegroup dto);

}
