package com.kiosk.app.infra.member;

import java.util.List;

public interface MemberService {
	
public int selectOneCount(MemberVo vo);
	
	public List<Member> selectList(MemberVo vo);
	
	public Member selectOne(MemberVo vo);
	
	public Member selectTwo(MemberVo vo);
	
	public int selectOneCheckId(MemberVo vo);
	
	public int update(Member dto);
	
	public int delete(Member dto);
	
	public int insert(Member dto);
	
	public int uelete(Member dto);
}
