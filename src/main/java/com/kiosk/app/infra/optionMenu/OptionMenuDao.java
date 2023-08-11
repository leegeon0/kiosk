package com.kiosk.app.infra.optionMenu;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.kiosk.app.infra.member.Member;

@Repository
public class OptionMenuDao {

	
	@Inject
	@Resource(name ="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kiosk.app.infra.optionMenu.OptionMenuMapper";
	
	public int selectOneCount(OptionMenuVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public List<OptionMenu> selectList(OptionMenuVo vo) {
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	public List<OptionMenu> optionSelectList(OptionMenuVo vo){
		return sqlSession.selectList(namespace + ".optionSelectList",vo);
	}
	
	public OptionMenu selectOne(OptionMenuVo vo) {
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public OptionMenu selectTwo(OptionMenuVo vo) {
		return sqlSession.selectOne(namespace + ".selectTwo", vo);
	}
	
	public int update(OptionMenu dto){
//		
//		int codeGroup2 = sqlSession.update(namespace + ".update", dto);
//		return codeGroup2;
		return sqlSession.update(namespace + ".update", dto);
		
	}
	
	public int delete(OptionMenu dto){

		return sqlSession.delete(namespace + ".delete", dto);
		
	}
	
	public int insert(OptionMenu dto){

		return sqlSession.insert(namespace + ".insert", dto);
		
	}
	
	public int uelete(OptionMenu dto){

		return sqlSession.update(namespace + ".uelete", dto);
		
	}
	
	
	
	
}
