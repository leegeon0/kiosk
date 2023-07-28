package com.kiosk.app.infra.menu;

import java.util.List;

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
	
	@RequestMapping("/menuXdmForm")
	public String memberXdomForm(MenuVo vo,Model model) {
		
		Menu menu = service.selectOne(vo);
		
		
		model.addAttribute("item",menu);
		
		
		return "xdm/infra/menu/menuXdmForm";
	}
	
	@RequestMapping("/menuUpdt")
	public String menuUpdt(Menu dto) {
		
		service.update(dto);
		
		return "redirect:/menuXdmList";
	}
	
	@RequestMapping("/menuInsert")
	public String menuInsert(Menu dto) {
		
		service.insert(dto);
		
		return "redirect:/menuXdmList";
	}
	
	@RequestMapping("/menuDel")
	public String menuDel(Menu dto) {
		
		service.delete(dto);
		
		return "redirect:/menuXdmList";
	}
	
	@RequestMapping("/menuUele")
	public String menuUele(Menu dto) {
		
		service.uelete(dto);
		
		return "redirect:/menuXdmList";
	}
	
	
}
