package com.kiosk.app.infra.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {
	
	@Autowired
	CodeDao dao;

	@Override
	public int selectOneCount(CodeVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Code> selectList(CodeVo vo) {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}

	@Override
	public Code selectOne(CodeVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public int update(Code dto) {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Override
	public int delete(Code dto) {
		// TODO Auto-generated method stub
		return dao.delete(dto);
	}

	@Override
	public int insert(Code dto) {
		// TODO Auto-generated method stub
		return dao.insert(dto);
	}

	@Override
	public int uelete(Code dto) {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}
	
	
	/*
	 * // 공통코드 세팅
	 * 
	 * @PostConstruct public void selectListCodeArrayList() throws Exception{
	 * List<Code> codeListFromDb = (ArrayList<Code>)dao.selectListCodeArrayList();
	 * // codeListFromDb = (ArrayList<Code>)dao.selectListCodeArrayList();
	 * 
	 * for(Code a : codeListFromDb) { System.out.println(a.getName()); }
	 * 
	 * Code.codeArrayList.clear(); Code.codeArrayList.addAll(codeListFromDb);
	 * 
	 * for(Code b : Code.codeArrayList) { System.out.println(b.getName()); }
	 * System.out.println("cachedCodeArrayList : " + Code.codeArrayList.size() +
	 * "cached"); }
	 * 
	 * public static void clear() { Code.codeArrayList.clear(); }
	 * 
	 * 
	 * 
	 * public static List<Code> selectListCachedCode(String codegroup_seq) throws
	 * Exception{ List<Code> rt = new ArrayList<Code>();
	 * System.out.println(Code.codeArrayList.size());
	 * 
	 * for(Code codeRow : Code.codeArrayList) {
	 * 
	 * System.out.println("codeRow.getCodegroup_seq()+ " +
	 * codeRow.getCodegroup_seq() + "" + codegroup_seq);
	 * if(codeRow.getCodegroup_seq().equals(codegroup_seq)) {
	 * System.out.println("ssss"); rt.add(codeRow); }else { // by pass
	 * System.out.println("adadada"); }
	 * 
	 * } return rt; }
	 * 
	 * 
	 * 
	 * 
	 * 
	 * 
	 * public static String selectOneCachedCode(int code) throws Exception{ String
	 * rt =""; for(Code codeRow : Code.codeArrayList) {
	 * if(codeRow.getSeq().equals(Integer.toString(code))) { rt = codeRow.getName();
	 * }else { // by pass } } return rt; }
	 * 
	 */
	  
	 

}
