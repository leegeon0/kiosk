package com.kiosk.app.infra.orderList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderListServiceImpl implements OrderListService{

	@Autowired
	OrderListDao dao;

	@Override
	public int selectOneCount(OrderListVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public List<OrderList> selectList(OrderListVo vo) {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public OrderList selectOne(OrderListVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int update(OrderList dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(OrderList dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int insert(OrderList dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}


}
