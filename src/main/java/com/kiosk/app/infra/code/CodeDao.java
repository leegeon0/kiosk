package com.kiosk.app.infra.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kiosk.app.infra.code.CodeMapper";
	
	public int selectOneCount(CodeVo vo){
		
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
		
		}
	
	
	public List<Code> selectList(CodeVo vo){
		
		return sqlSession.selectList(namespace + ".selectList", vo);
		
	}
	
	public Code selectOne(CodeVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
		
	}
	
	
	public int update(Code dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int delete(Code dto) {
		return sqlSession.delete(namespace + ".delete", dto);
	}
	
	public int insert(Code dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	
	public int uelete(Code dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
	 
	  //for cache
	public List<Code> selectListCodeArrayList(){ return
	sqlSession.selectList(namespace + ".selectListCodeArrayList", null); }
	
	public List<CodeVo> selectCodeGroupList (CodeVo vo) {
		return sqlSession.selectList(namespace + ".selectCodeGroupList", vo);
	}
}
