package com.kiosk.app.infra.option;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kiosk.app.infra.menu.Menu;
import com.kiosk.app.infra.menu.MenuVo;

@Controller
public class OptionController {
	
	@Autowired
	OptionServiceImpl service;
	
	@RequestMapping("/optionXdmList")
	public String optionXdmList(@ModelAttribute("vo") Option vo, Model model) throws Exception {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<Option> list = service.selectList(vo);
			model.addAttribute("list",list);
		} else {
			// by pass
		}
		return "xdm/infra/option/optionXdmList";
	}
	@RequestMapping("/optionXdmForm")
	public String memberXdomForm(Option vo,Model model) {
		
		Option option = service.selectOne(vo);
		
		
		model.addAttribute("item",option);
		
		
		return "xdm/infra/menu/menuXdmForm";
	}
	
	@RequestMapping("/optionUpdt")
	public String optionUpdt(Option dto) {
		
		service.update(dto);
		
		return "redirect:/optionXdmList";
	}
	
	@RequestMapping("/optionInsert")
	public String optionInsert(Option dto) {
		
		service.insert(dto);
		
		return "redirect:/optionXdmList";
	}
	
	@RequestMapping("/optionDel")
	public String optionDel(Option dto) {
		
		service.delete(dto);
		
		return "redirect:/optionXdmList";
	}
	
	@RequestMapping("/optionUele")
	public String optionUele(Option dto) {
		
		service.uelete(dto);
		
		return "redirect:/optionXdmList";
	}
}
