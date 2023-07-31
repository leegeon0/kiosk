package com.kiosk.app.infra.orderList;

import java.util.List;

public interface OrderListService {
	
	public int selectOneCount(OrderListVo vo);
	
	public List<OrderList>selectList(OrderListVo vo);
	
	public OrderList selectOne(OrderListVo vo);
	
	public int update(OrderList dto);
	
	public int delete(OrderList dto);
	
	public int insert(OrderList dto);

}
