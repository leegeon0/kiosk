package com.kiosk.app.infra.customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

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
	@ResponseBody
	@RequestMapping("/customerInsert")
	public Map<String,Object> idCheck(CustomerVo vo, HttpSession httpSession, Customer dto){
		Map<String,Object> returnMap = new HashMap<String,Object>();

		int rtNum = service.idCheck(vo);

		if(rtNum > 0) {
			// by pass
			returnMap.put("rt", "welcomeBack");
		} else {
//			service.insert(dto);
			returnMap.put("rt", "welcome");
		}

		return returnMap;

	}


//	@ResponseBody
//	@RequestMapping("/userlogin")
//	public Map<String,Object> loginUser(MemberVo vo, HttpSession httpSession){
//		Map<String,Object> returnMap = new HashMap<String,Object>();
//		Member rtMemberUser = serviceMember.loginUser(vo);
//		if(rtMemberUser != null) {
////			returnMap.put("rtMemberUser",rtMemberUser);
////			returnMap.put("rt","success");
////			httpSession.setMaxInactiveInterval(60*60);//min60
////			httpSession.setAttribute("sessionUserId",vo.getId_Email());
////			httpSession.setAttribute("sessionUserName",rtMemberUser.getName());
////			httpSession.setAttribute("sessionUserSeq",rtMemberUser.getSeq());
//		}else {
//			returnMap.put("rt","fail");
//		}
//
//
//		return returnMap;
//	}

//	@ResponseBody
//	@RequestMapping("/customerInsert")
//	public Map<String,Object> idCheck(CustomerVo vo, HttpSession httpSession){
//		Map<String,Object> returnMap = new HashMap<String,Object>();
//		Customer rtMemberUser = serviceMember.loginUser(vo);
//		if(rtMemberUser != null) {
//			returnMap.put("rtMemberUser",rtMemberUser);
//			returnMap.put("rt","success");
//			httpSession.setMaxInactiveInterval(60*60);//min60
//			httpSession.setAttribute("sessionUserId",vo.getId_Email());
//			httpSession.setAttribute("sessionUserName",rtMemberUser.getName());
//			httpSession.setAttribute("sessionUserSeq",rtMemberUser.getSeq());
//		}else {
//			returnMap.put("rt","fail");
//		}
//
//
//		return returnMap;
//	}

}
