package com.kiosk.app.infra.optionList;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class OptionListDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kiosk.app.infra.optionList.OptionListMapper";
	public int selectOneCount(OptionListVo vo){
		
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
		
		}
	
	
	public List<OptionList> selectList(OptionListVo vo){
		
		return sqlSession.selectList(namespace + ".selectList", vo);
		
	}
	
	public OptionList selectOne(OptionListVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
		
	}
	
	
	public int update(OptionList dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	
	public int delete(OptionList dto) {
		return sqlSession.delete(namespace + ".delete", dto);
	}
	
	public int insert(OptionList dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}

}
