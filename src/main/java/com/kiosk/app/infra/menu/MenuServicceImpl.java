package com.kiosk.app.infra.menu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuServicceImpl implements MenuService {

	@Autowired
	MenuDao dao;
	
	@Override
	public int selectOneCount(Menu dto) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(dto);
	}

	@Override
	public List<Menu> selectList(Menu dto) {
		// TODO Auto-generated method stub
		return dao.selectList(dto);
	}

	@Override
	public Menu selectOne(Menu dto) {
		// TODO Auto-generated method stub
		return dao.selectOne(dto);
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

	
}
