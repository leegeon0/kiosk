package com.kiosk.app.infra.menu;

import java.util.List;

public interface MenuService {

	public int selectOneCount(MenuVo vo);
	
	public List<Menu>selectList(MenuVo vo);
	
	public List<Menu>menuSelectList(MenuVo vo);
	
	public Menu selectOne(MenuVo vo);
	
	public int update(Menu dto);
	public int delete(Menu dto);
	public int insert(Menu dto);
	public int uelete(Menu dto);
}
