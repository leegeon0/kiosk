package com.kiosk.app.infra.menu;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kiosk.app.infra.member.Member;


@Controller
public class MenuController {

	@Autowired
	MenuServiceImpl service;
	
	@RequestMapping("/menuXdmList")
	public String menuXdmList(@ModelAttribute("vo") MenuVo vo,Model model) throws Exception {
		
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<Menu> list = service.selectList(vo);
			model.addAttribute("list",list);
		} else {
			// by pass
		}
		return "xdm/infra/menu/menuXdmList";
		
	}
}
