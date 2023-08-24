package com.kiosk.app.infra.star;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class StarController {
	@Autowired
	StarServiceImpl service;

	@RequestMapping("/starXdmList")
	public String starXdmList(@ModelAttribute("vo") StarVo vo, Model model) throws Exception {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		
		List<Star> list = service.selectList2(vo);
		
		if(vo.getTotalRows()>0) {
			
			model.addAttribute("list",list);
			
			
		} else {
			// by pass
		}
		return "xdm/infra/star/starXdmList";
	}
	@RequestMapping("/starXdmForm")
	public String memberXdomForm(StarVo vo,Model model) {
		
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
	public String starInsert1(Star dto) {
		
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
	
	@RequestMapping("/userStarInsert")
	public String starInsert(Star dto) {
		
		service.starInsert(dto);
		
		return  "redirect:/order";
	}
	
	

}
