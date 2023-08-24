package com.kiosk.app.infra.star;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class StarDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kiosk.app.infra.star.StarMapper";
	
	public int selectOneCount(StarVo vo) {
		
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public List<Star> selectList(StarVo vo) {
		
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	public List<Star> selectList2(StarVo vo) {
			
			return sqlSession.selectList(namespace + ".selectList2", vo);
		}
	
	public Star selectOne(StarVo vo) {
		
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public int update(Star dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	public int delete(Star dto) {
		return sqlSession.delete(namespace + ".delete", dto);
	}
	public int insert(Star dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	public int uelete(Star dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	public int starInsert(Star dto) {
		return sqlSession.insert(namespace + ".starInsert", dto);
	}
}
