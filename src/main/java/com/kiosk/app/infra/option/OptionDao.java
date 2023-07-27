package com.kiosk.app.infra.option;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

	@Repository
public class OptionDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kiosk.app.infra.option.OptionMapper";
	
	public int selectOneCount(Option dto) {
		
		return sqlSession.selectOne(namespace + ".selectOneCount", dto);
	}
	
	public List<Option> selectList(Option dto) {
		
		return sqlSession.selectList(namespace + ".selectList", dto);
	}
	
	public Option selectOne(Option dto) {
		
		return sqlSession.selectOne(namespace + ".selectOne", dto);
	}
	
	public int update(Option dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	public int delete(Option dto) {
		return sqlSession.delete(namespace + ".delete", dto);
	}
	public int insert(Option dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	public int uelete(Option dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
}
