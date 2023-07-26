package com.kiosk.app.infra.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.kiosk.app.infra.member.MemberMapper";
	
	
	public int selectOneCount(MemberVo vo){
		
		return sqlSession.selectOne(namespace + ".selectOneCount", vo);
		
		}
	
	
	public List<Member> selectList(MemberVo vo){
		
		return sqlSession.selectList(namespace + ".selectList", vo);
		
	}
	
	public Member selectOne(MemberVo vo){
		
		Member codeGroup = sqlSession.selectOne(namespace + ".selectOne", vo);
		return codeGroup;
		
	}
	
	public Member selectTwo(MemberVo vo){
		
		
		return sqlSession.selectOne(namespace + ".selectTwo", vo); 
		
	}
	
	public int selecOneCheckId(MemberVo vo) {
		return sqlSession.selectOne(namespace + ".selectOneCheckId", vo) ;
		
	}
	

	
	public int update(Member dto){
//		
//		int codeGroup2 = sqlSession.update(namespace + ".update", dto);
//		return codeGroup2;
		return sqlSession.update(namespace + ".update", dto);
		
	}
	
	public int delete(Member dto){

		return sqlSession.delete(namespace + ".delete", dto);
		
	}
	
	public int insert(Member dto){

		return sqlSession.insert(namespace + ".insert", dto);
		
	}
	
	public int uelete(Member dto){

		return sqlSession.update(namespace + ".uelete", dto);
		
	}
	
}
