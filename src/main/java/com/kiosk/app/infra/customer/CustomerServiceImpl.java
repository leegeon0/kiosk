package com.kiosk.app.infra.customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	CustomerDao dao;

	@Override
	public int selectOneCount(CustomerVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Customer> selectList(CustomerVo vo) {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public Customer selectOne(CustomerVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int update(Customer dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(Customer dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int insert(Customer dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int idCheck(CustomerVo vo) {
		return dao.idCheck(vo);
	}


}
