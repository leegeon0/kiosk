package com.kiosk.app.infra.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodegroupDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kiosk.app.infra.codegroup.CodegroupMapper";
	
	public int selectOneCount(CodegroupVo vo){
		
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
		
		}
	
	
	public List<Codegroup> selectList(CodegroupVo vo){
		
		return sqlSession.selectList(namespace + ".selectList", vo);
		
	}
	
	public Codegroup selectOne(CodegroupVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
		
	}
	
	
	public int update(Codegroup dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int delete(Codegroup dto) {
		return sqlSession.delete(namespace + ".delete", dto);
	}
	
	public int insert(Codegroup dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	
	public int uelete(Codegroup dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
}
