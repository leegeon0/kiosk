package com.kiosk.app.infra.optionList;

import java.util.List;

public interface OptionListService {
	
	public int selectOneCount(OptionListVo vo);
	
	public List<OptionList>selectList(OptionListVo vo);
	
	public OptionList selectOne(OptionListVo vo);
	
	public int update(OptionList dto);
	
	public int delete(OptionList dto);
	
	public int insert(OptionList dto);

}
