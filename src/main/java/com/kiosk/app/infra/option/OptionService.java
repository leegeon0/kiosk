package com.kiosk.app.infra.option;

import java.util.List;

public interface OptionService {

	public int selectOneCount(Option dto);
	
	public List<Option>selectList(Option dto);
	
	public Option selectOne(Option dto);
	
	public int update(Option dto);
	public int delete(Option dto);
	public int insert(Option dto);
	public int uelete(Option dto);
}
