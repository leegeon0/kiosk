package com.kiosk.app.infra.orderList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class OrderListController {
	
	@Autowired
	OrderListServiceImpl service;
	
	@RequestMapping("/orderListXdmList")
	public String orderListXdmList(@ModelAttribute("vo") OrderListVo vo,Model model) {
		
		
		vo.setShKeyword(vo.getShKeyword() == null ? "": vo.getShKeyword()); 
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<OrderList> list = service.selectList(vo);
			model.addAttribute("list",list);
		} else {
			// by pass
		}
		
		
		return "xdm/infra/orderList/orderListXdmList";
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
	
	@RequestMapping("/orderListForm")
	public String orderListForm(OrderListVo vo, Model model) {

		OrderList item = service.selectOne(vo);

//		왼쪽의 list는 isp에서 사용할 변수명
		model.addAttribute("item", item);

		return "/xdm/infra/orderList/orderListForm";

	}
	
	@RequestMapping("/orderListDelt")

	public String orderListDelt(OrderList dto) {

		System.out.println("orderListDelt");
		service.delete(dto);

		return "redirect:/orderListXdmList";

	}
	
	
	@RequestMapping("/orderListUpdt")

	public String orderListUpdt(OrderList dto) {

		System.out.println("orderListUpdt");
		service.update(dto);

		return "redirect:/orderListXdmList";

	}
	
	@RequestMapping("/orderListInsert")

	public String orderListInsert(OrderList dto) {

		System.out.println("orderListInsert");
		service.insert(dto);

		return "redirect:/orderListXdmList";

	}

}
