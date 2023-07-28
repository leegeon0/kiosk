package com.kiosk.app.infra.customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class CustomerController {
	
	@Autowired
	CustomerServiceImpl service;
	
	@RequestMapping("/customerXdmList")
	public String customerXdmList(@ModelAttribute("vo") CustomerVo vo,Model model) {
		
		
		vo.setShKeyword(vo.getShKeyword() == null ? "": vo.getShKeyword()); 
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<Customer> list = service.selectList(vo);
			model.addAttribute("list",list);
		} else {
			// by pass
		}
		
		
		return "xdm/infra/customer/customerXdmList";
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
	
	@RequestMapping("/customerForm")
	public String customerForm(CustomerVo vo, Model model) {

		Customer item = service.selectOne(vo);

//		왼쪽의 list는 isp에서 사용할 변수명
		model.addAttribute("item", item);

		return "/xdm/infra/customer/customerForm";

	}
	
	@RequestMapping("/customerDelt")

	public String customerDelt(Customer dto) {

		System.out.println("customerDelt");
		service.delete(dto);

		return "redirect:/customerXdmList";

	}
	
	
	@RequestMapping("/customerUpdt")

	public String customerUpdt(Customer dto) {

		System.out.println("customerUpdt");
		service.update(dto);

		return "redirect:/customerXdmList";

	}
	
	@RequestMapping("/customerInsert")

	public String customerInsert(Customer dto) {

		System.out.println("customerInsert");
		service.insert(dto);

		return "redirect:/customerXdmList";

	}

}
