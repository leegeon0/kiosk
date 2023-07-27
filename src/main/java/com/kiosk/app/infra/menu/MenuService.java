package com.kiosk.app.infra.menu;

import java.util.List;

public interface MenuService {

	public int selectOneCount(Menu dto);
	
	public List<Menu>selectList(Menu dto);
	
	public Menu selectOne(Menu dto);
	
	public int update(Menu dto);
	public int delete(Menu dto);
	public int insert(Menu dto);
	public int uelete(Menu dto);
}
