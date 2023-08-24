package com.kiosk.app.infra.star;

import java.util.List;

public interface StarService {
	
	public int selectOneCount(StarVo vo);
	
	public List<Star>selectList(StarVo vo);
	public List<Star>selectList2(StarVo vo);
	public Star selectOne(StarVo vo);
	
	public int update(Star dto);
	public int delete(Star dto);
	public int insert(Star dto);
	public int uelete(Star dto);
	public int starInsert(Star dto);

}
