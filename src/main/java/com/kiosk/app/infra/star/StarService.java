package com.kiosk.app.infra.star;

import java.util.List;

public interface StarService {
	
	public int selectOneCount(Star dto);
	
	public List<Star>selectList(Star dto);
	
	public Star selectOne(Star dto);
	
	public int update(Star dto);
	public int delete(Star dto);
	public int insert(Star dto);
	public int uelete(Star dto);
	public int starInsert(Star dto);

}
