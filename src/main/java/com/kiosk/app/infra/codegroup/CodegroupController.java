package com.kiosk.app.infra.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class CodegroupController {

	@Autowired
	CodegroupServiceImpl service;
	
	@RequestMapping("/codegroupXdmList")
	public String kioskCodeGroupXdmList(@ModelAttribute("vo") CodegroupVo vo,Model model) {
		
		
		vo.setShKeyword(vo.getShKeyword() == null ? "": vo.getShKeyword()); 
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<Codegroup> list = service.selectList(vo);
			model.addAttribute("list",list);
		} else {
			// by pass
		}
		
		
		return "xdm/infra/codegroup/codegroupXdmList";
	}
	@RequestMapping("/codegroupXdmForm")
	public String kioskCodegroupXdmForm(CodegroupVo vo,Model model) {
		
//		System.out.println("vo.getSeq(): " + vo.getSeq());
		
		Codegroup codeGroup = service.selectOne(vo);
		
//		System.out.println("codeGroup.getSeq():" + codeGroup.getSeq());
		
//		왼쪽의 list 는 jsp에서 사용할 변수명
		model.addAttribute("item",codeGroup);
		
//		model.addAttribute("list",service.selectList(); 위에 두줄 대신에 사용가능
		
		return "xdm/infra/codegroup/codegroupXdmForm";
	}
	
	
	@RequestMapping("/codegroupUpdt")
	public String kioskcodegroupUpdt(Codegroup dto) {
		
		System.out.println("codegroupUpdt");
		service.update(dto);
		
		
		return "redirect:/codegroupXdmList";
	}
	
	@RequestMapping("/codegroupDel")
	public String kioskcodegroupDel(Codegroup dto) {
		
		System.out.println("codegroupDel");
		service.delete(dto);
		
		
		return "redirect:/codegroupXdmList";
	}
	
	
	@RequestMapping("/codegroupInsert")
	public String kioskcodegroupInsert(Codegroup dto) {
		
		System.out.println("codegroupInsert");
		service.insert(dto);
		
		
		return "redirect:/codegroupXdmList";
	}
	
	@RequestMapping("/codegroupUele")
	public String kioskcodegroupUele(Codegroup dto) {
		
		System.out.println("codegroupUele");
		service.uelete(dto);
		
		
		return "redirect:/codegroupXdmList";
		// 경로가 없다면 redirect:/ 추가
		// 경로가 있다면 해당 JSP로 return
	}
	
	
	
	
}
