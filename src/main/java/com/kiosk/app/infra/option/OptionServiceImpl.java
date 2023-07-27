package com.kiosk.app.infra.option;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OptionServiceImpl implements OptionService{

	@Autowired
	OptionDao dao;

	@Override
	public int selectOneCount(Option dto) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(dto);
	}

	@Override
	public List<Option> selectList(Option dto) {
		// TODO Auto-generated method stub
		return dao.selectList(dto);
	}

	@Override
	public Option selectOne(Option dto) {
		// TODO Auto-generated method stub
		return dao.selectOne(dto);
	}

	@Override
	public int update(Option dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(Option dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int insert(Option dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int uelete(Option dto) {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}
	
	
}
