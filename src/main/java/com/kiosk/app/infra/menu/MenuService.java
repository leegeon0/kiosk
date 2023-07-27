package com.kiosk.app.infra.menu;

import java.util.List;

public interface MenuService {

	public int selectOneCount(MenuVo vo);
	
	public List<MenuVo>selectList(MenuVo vo);
	
	public MenuVo selectOne(MenuVo vo);
	
	public int update(Menu dto);
	public int delete(Menu dto);
	public int insert(Menu dto);
	public int uelete(Menu dto);
}
