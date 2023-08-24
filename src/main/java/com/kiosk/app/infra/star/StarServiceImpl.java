package com.kiosk.app.infra.star;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StarServiceImpl implements StarService{
	
	@Autowired
	StarDao dao;

	@Override
	public int selectOneCount(StarVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Star> selectList(StarVo vo) {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public Star selectOne(StarVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int update(Star dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(Star dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int insert(Star dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int uelete(Star dto) {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}

	@Override
	public int starInsert(Star dto) {
		// TODO Auto-generated method stub
		return dao.starInsert(dto);
	}

	@Override
	public List<Star> selectList2(StarVo vo) {
		// TODO Auto-generated method stub
		return dao.selectList2(vo);
	}
}
