package com.kiosk.app.infra.optionList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class OptionListController {
	
	@Autowired
	OptionListServiceImpl service;
	
	@RequestMapping("/optionListXdmList")
	public String optionListXdmList(@ModelAttribute("vo") OptionListVo vo,Model model) {
		
		
		vo.setShKeyword(vo.getShKeyword() == null ? "": vo.getShKeyword()); 
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<OptionList> list = service.selectList(vo);
			model.addAttribute("list",list);
		} else {
			// by pass
		}
		
		
		return "xdm/infra/optionList/optionListXdmList";
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
	
	@RequestMapping("/optionListForm")
	public String optionListForm(OptionListVo vo, Model model) {

		OptionList item = service.selectOne(vo);

//		왼쪽의 list는 isp에서 사용할 변수명
		model.addAttribute("item", item);

		return "/xdm/infra/optionList/optionListForm";

	}
	
	@RequestMapping("/optionListDelt")

	public String optionListDelt(OptionList dto) {

		System.out.println("optionListDelt");
		service.delete(dto);

		return "redirect:/optionListXdmList";

	}
	
	
	@RequestMapping("/optionListUpdt")

	public String optionListUpdt(OptionList dto) {

		System.out.println("optionListUpdt");
		service.update(dto);

		return "redirect:/optionListXdmList";

	}
	
	@RequestMapping("/optionListInsert")

	public String optionListInsert(OptionList dto) {

		System.out.println("optionListInsert");
		service.insert(dto);

		return "redirect:/optionListXdmList";

	}

}
