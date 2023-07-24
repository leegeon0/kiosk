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
	
	@RequestMapping("/kioskCodeGroupXdmList")
	public String kioskCodeGroupXdmList(@ModelAttribute("vo") CodegroupVo vo,Model model) {
		
		
		vo.setShKeyword(vo.getShKeyword() == null ? "": vo.getShKeyword()); 
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<Codegroup> list = service.selectList(vo);
			model.addAttribute("list",list);
		} else {
			// by pass
		}
		
		
		return "kioskXdm/infra/codegroup/kioskCodeGroupXdmList";
	}
	
}
