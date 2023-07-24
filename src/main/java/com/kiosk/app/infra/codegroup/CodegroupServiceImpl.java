package com.kiosk.app.infra.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;




@Service
public class CodegroupServiceImpl implements CodegroupService {

	@Autowired
	CodegroupDao dao;

	@Override
	public int selectOneCount(CodegroupVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Codegroup> selectList(CodegroupVo vo) {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public Codegroup selectOne(CodegroupVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int update(Codegroup dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(Codegroup dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int insert(Codegroup dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int uelete(Codegroup dto) {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}
}
