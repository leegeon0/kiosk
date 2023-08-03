package com.kiosk.app.infra.menu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuServiceImpl implements MenuService {

	@Autowired
	MenuDao dao;
	
	@Override
	public int selectOneCount(MenuVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Menu> selectList(MenuVo vo) {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public Menu selectOne(MenuVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int update(Menu dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(Menu dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int insert(Menu dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int uelete(Menu dto) {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}

	@Override
	public List<Menu> menuSelectList(MenuVo vo) {
		// TODO Auto-generated method stub
		return dao.menuSelectList(vo);
	}


	
}
