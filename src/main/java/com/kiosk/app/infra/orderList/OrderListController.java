package com.kiosk.app.infra.orderList;

import java.util.List;

import com.kiosk.app.infra.order.Order;
import com.kiosk.app.infra.order.OrderServiceImpl;
import com.kiosk.app.infra.order.OrderVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller 
public class OrderListController {
	
	@Autowired
	OrderServiceImpl service;
	
	@RequestMapping("/orderXdmList")
	public String orderListXdmList(@ModelAttribute("vo") OrderVo vo,Model model) {
		
		
		vo.setShKeyword(vo.getShKeyword() == null ? "": vo.getShKeyword()); 
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<Order> list = service.selectList(vo);
			model.addAttribute("list",list);
		} else {
			// by pass
		}
		
		
		return "xdm/infra/order/orderXdmList";
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
	
	@RequestMapping("/orderForm")
	public String orderListForm(OrderVo vo, Model model) {

		Order item = service.selectOne(vo);

//		왼쪽의 list는 isp에서 사용할 변수명
		model.addAttribute("item", item);

		return "/xdm/infra/order/orderForm";

	}
	
	@RequestMapping("/orderDelt")

	public String orderDelt(Order dto) {

		System.out.println("orderDelt");
		service.delete(dto);

		return "redirect:/orderXdmList";

	}
	
	
	@RequestMapping("/orderUpdt")

	public String orderUpdt(Order dto) {

		System.out.println("orderUpdt");
		service.update(dto);

		return "redirect:/orderXdmList";

	}
	
	@RequestMapping("/orderInsert")

	public String orderInsert(Order dto) {

		System.out.println("orderInsert");
		service.insert(dto);

		return "redirect:/orderXdmList";

	}

}
