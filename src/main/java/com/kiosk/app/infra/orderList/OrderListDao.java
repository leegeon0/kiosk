package com.kiosk.app.infra.orderList;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class OrderListDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kiosk.app.infra.orderList.OrderListMapper";
	public int selectOneCount(OrderListVo vo){
		
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
		
		}
	
	
	public List<OrderList> selectList(OrderListVo vo){
		
		return sqlSession.selectList(namespace + ".selectList", vo);
		
	}
	
	public OrderList selectOne(OrderListVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
		
	}
	
	
	public int update(OrderList dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int delete(OrderList dto) {
		return sqlSession.delete(namespace + ".delete", dto);
	}
	
	public int insert(OrderList dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}

}
