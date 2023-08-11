package com.kiosk.app.infra.optionMenu;

import java.util.List;

public interface OptionMenuService {

	public int selectOneCount(OptionMenuVo vo);
	
	public List<OptionMenu> selectList(OptionMenuVo vo);

	public List<OptionMenu> optionSelectList(OptionMenuVo vo);
	
	public OptionMenu selectOne(OptionMenuVo vo);
	
	public OptionMenu selectTwo(OptionMenuVo vo);
	
	
	
	public int update(OptionMenu dto);
	
	public int delete(OptionMenu dto);
	
	public int insert(OptionMenu dto);
	
	public int uelete(OptionMenu dto);
}
