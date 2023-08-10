package com.kiosk.app.infra.order;

import com.kiosk.app.infra.order.Order;
import com.kiosk.app.infra.order.OrderVo;

import java.util.List;

public interface OrderService {

	public int selectOneCount(OrderVo vo);
	
	public List<Order>selectList(OrderVo vo);
	
	public Order selectOne(OrderVo vo);
	
	public int update(Order dto);
	public int delete(Order dto);
	public int insert(Order dto);

}
