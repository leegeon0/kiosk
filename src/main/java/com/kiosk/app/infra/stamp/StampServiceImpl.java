package com.kiosk.app.infra.stamp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StampServiceImpl implements StampService{

	@Autowired
	StampDao dao;

	@Override
	public int selectOneCount(StampVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Stamp> selectList(StampVo vo) {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public Stamp selectOne(StampVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int update(Stamp dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(Stamp dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int insert(Stamp dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}


}
