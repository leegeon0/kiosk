package com.kiosk.app.infra.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    OrderDao dao;

    @Override
    public int selectOneCount(OrderVo vo) {
        return dao.selectOneCount(vo);
    }

    @Override
    public List<Order> selectList(OrderVo vo) {
        return dao.selectList(vo);
    }



    @Override
    public Order selectOne(OrderVo vo) {
        return dao.selectOne(vo);
    }

    @Override
    public int update(Order dto) {
        return dao.update(dto);
    }

    @Override
    public int delete(Order dto) {
        return dao.delete(dto);
    }

    @Override
    public int insert(Order dto) {
        return dao.insert(dto);
    }

}
