package com.kiosk.app.infra.menu;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MenuDao {

	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kiosk.app.infra.menu.MenuMapper";
	
	public int selectOneCount(MenuVo vo) {
		
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
	}
	
	public List<Menu> selectList(MenuVo vo) {
		
		return sqlSession.selectList(namespace + ".selectList", vo);
	}
	
	public MenuVo selectOne(MenuVo vo) {
		
		return sqlSession.selectOne(namespace + ".selectOne", vo);
	}
	
	public int update(Menu dto) {
		return sqlSession.update(namespace + ".update", dto);
	}
	public int delete(Menu dto) {
		return sqlSession.delete(namespace + ".delete", dto);
	}
	public int insert(Menu dto) {
		return sqlSession.insert(namespace + ".insert", dto);
	}
	public int uelete(Menu dto) {
		return sqlSession.update(namespace + ".uelete", dto);
	}
	
}
