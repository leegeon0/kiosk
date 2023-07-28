package com.kiosk.app.infra.customer;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kiosk.app.infra.customer.CustomerMapper";
	public int selectOneCount(CustomerVo vo){
		
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
		
		}
	
	
	public List<Customer> selectList(CustomerVo vo){
		
		return sqlSession.selectList(namespace + ".selectList", vo);
		
	}
	
	public Customer selectOne(CustomerVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
		
	}
	
	
	public int update(Customer dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int delete(Customer dto) {
		return sqlSession.delete(namespace + ".delete", dto);
	}
	
	public int insert(Customer dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}

}
