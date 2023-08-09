package com.kiosk.app.infra.stamp;

import java.util.List;

public interface StampService {
	
	public int selectOneCount(StampVo vo);
	
	public List<Stamp>selectList(StampVo vo);
	
	public Stamp selectOne(StampVo vo);
	
	public int update(Stamp dto);
	
	public int delete(Stamp dto);
	
	public int insert(Stamp dto);

	public List<StampVo>test(StampVo vo);

}
