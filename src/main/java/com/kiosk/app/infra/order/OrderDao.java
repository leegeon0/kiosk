package com.kiosk.app.infra.order;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDao {
    @Inject
    @Resource(name = "sqlSession")
    private SqlSession sqlSession;

    private static String namespace = "com.kiosk.app.infra.order.OrderMapper";
    public int selectOneCount(OrderVo vo){

        return sqlSession.selectOne(namespace + ".selectOneCount", vo);

    }


    public List<Order> selectList(OrderVo vo){

        return sqlSession.selectList(namespace + ".selectList", vo);

    }

    public Order selectOne(OrderVo vo) {
        return sqlSession.selectOne(namespace + ".selectOne", vo);

    }


    public int update(Order dto) {
        return sqlSession.update(namespace + ".update", dto);
    }

    public int delete(Order dto) {
        return sqlSession.delete(namespace + ".delete", dto);
    }

    public int insert(Order dto) {
        return sqlSession.insert(namespace + ".insert", dto);
    }

}
