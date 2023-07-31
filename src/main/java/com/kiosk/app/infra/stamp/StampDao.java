package com.kiosk.app.infra.stamp;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class StampDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kiosk.app.infra.stamp.StampMapper";
	public int selectOneCount(StampVo vo){
		
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
		
		}
	
	
	public List<Stamp> selectList(StampVo vo){
		
		return sqlSession.selectList(namespace + ".selectList", vo);
		
	}
	
	public Stamp selectOne(StampVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
		
	}
	
	
	public int update(Stamp dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int delete(Stamp dto) {
		return sqlSession.delete(namespace + ".delete", dto);
	}
	
	public int insert(Stamp dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}

}
