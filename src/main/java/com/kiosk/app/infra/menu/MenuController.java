package com.kiosk.app.infra.menu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MenuController {

	@Autowired
	MenuServiceImpl service;
	
	@RequestMapping("/menuXdmList")
	public String menuXdmList(@ModelAttribute("vo") MenuVo vo,Model model) {
		
		model.addAttribute("list",service.selectList(vo));
		return "xdm/infra/menu/menuXdmList";
		
	}
}
