package com.kiosk.app.infra.star;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kiosk.app.infra.option.Option;

@Controller
public class StarController {
	@Autowired
	StarServiceImpl service;

	@RequestMapping("/starXdmList")
	public String starXdmList(@ModelAttribute("vo") Star vo, Model model) throws Exception {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<Star> list = service.selectList(vo);
			model.addAttribute("list",list);
		} else {
			// by pass
		}
		return "xdm/infra/star/starXdmList";
	}
	@RequestMapping("/starXdmForm")
	public String memberXdomForm(Star vo,Model model) {
		
		Star star = service.selectOne(vo);
		
		
		model.addAttribute("item",star);
		
		
		return "xdm/infra/star/starXdmForm";
	}
	
	@RequestMapping("/starUpdt")
	public String starUpdt(Star dto) {
		
		service.update(dto);
		
		return "redirect:/starXdmList";
	}
	
	@RequestMapping("/starInsert")
	public String starInsert(Star dto) {
		
		service.insert(dto);
		
		return "redirect:/starXdmList";
	}
	
	@RequestMapping("/starDel")
	public String starDel(Star dto) {
		
		service.delete(dto);
		
		return "redirect:/starXdmList";
	}
	
	@RequestMapping("/starUele")
	public String starUele(Star dto) {
		
		service.uelete(dto);
		
		return "redirect:/starXdmList";
	}
}
