package com.kiosk.app.infra.stamp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class StampController {
	
	@Autowired
	StampServiceImpl service;
	
	@RequestMapping("/stampXdmList")
	public String customerXdmList(@ModelAttribute("vo") StampVo vo,Model model) {

		List<Stamp> test = service.test(vo);
		model.addAttribute("list",test);

		vo.setShKeyword(vo.getShKeyword() == null ? "": vo.getShKeyword()); 
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<Stamp> list = service.selectList(vo);
			model.addAttribute("list",list);
		} else {
			// by pass
		}
		
		
		return "xdm/infra/stamp/stampXdmList";
	}
	
	
	
//	@RequestMapping("/customerInsert")
//	public String customerInsert(CustomerVo vo, Model model) {
//
//		Customer item = service.selectOne(vo);
//
////		왼쪽의 list는 isp에서 사용할 변수명
//		model.addAttribute("item", item);
//
//		return "/xdm/infra/customer/customerInsert";
//
//	}
	
	@RequestMapping("/stampForm")
	public String customerForm(StampVo vo, Model model) {

		Stamp item = service.selectOne(vo);

//		왼쪽의 list는 isp에서 사용할 변수명
		model.addAttribute("item", item);

		return "/xdm/infra/stamp/stampForm";

	}
	
	@RequestMapping("/stampDelt")

	public String stamprDelt(Stamp dto) {

		System.out.println("stampDelt");
		service.delete(dto);

		return "redirect:/stampXdmList";

	}
	
	
	@RequestMapping("/stampUpdt")

	public String stampUpdt(Stamp dto) {

		System.out.println("stampUpdt");
		service.update(dto);

		return "redirect:/stampXdmList";

	}
	
	@RequestMapping("/stampInsert")

	public String stampInsert(Stamp dto) {

		System.out.println("stampInsert");
		service.insert(dto);

		return "redirect:/stampXdmList";

	}

}
