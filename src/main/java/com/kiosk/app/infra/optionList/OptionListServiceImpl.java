package com.kiosk.app.infra.optionList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OptionListServiceImpl implements OptionListService{

	@Autowired
	OptionListDao dao;

	@Override
	public int selectOneCount(OptionListVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public List<OptionList> selectList(OptionListVo vo) {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public OptionList selectOne(OptionListVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int update(OptionList dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(OptionList dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int insert(OptionList dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}


}
