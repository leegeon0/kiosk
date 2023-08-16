package com.kiosk.app.infra.customer;

import java.util.List;

public interface CustomerService {
	
	public int selectOneCount(CustomerVo vo);
	
	public List<Customer>selectList(CustomerVo vo);
	
	public Customer selectOne(CustomerVo vo);
	
	public int update(Customer dto);
	
	public int delete(Customer dto);
	
	public int insert(Customer dto);

	public int idCheck(CustomerVo vo);
}
