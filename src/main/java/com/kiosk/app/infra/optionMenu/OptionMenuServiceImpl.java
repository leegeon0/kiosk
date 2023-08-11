package com.kiosk.app.infra.optionMenu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OptionMenuServiceImpl implements OptionMenuService {

	@Autowired
	OptionMenuDao dao;
	
	@Override
	public int selectOneCount(OptionMenuVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public List<OptionMenu> selectList(OptionMenuVo vo) {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public OptionMenu selectOne(OptionMenuVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public OptionMenu selectTwo(OptionMenuVo vo) {
		// TODO Auto-generated method stub
		return dao.selectTwo(vo);
	}

	@Override
	public int update(OptionMenu dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(OptionMenu dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int insert(OptionMenu dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int uelete(OptionMenu dto) {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}

	@Override
	public List<OptionMenu> optionSelectList(OptionMenuVo vo) {
		// TODO Auto-generated method stub
		return dao.optionSelectList(vo);
	}

}
