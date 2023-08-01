package com.kiosk.app.infra.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping("/memberXdmList")
	public String memberXdmList(@ModelAttribute("vo") MemberVo vo,Model model) throws Exception {
		
		
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<Member> list = service.selectList(vo);
			model.addAttribute("list",list);
		} else {
			// by pass
		}
		
		return "xdm/infra/member/memberXdmList";
		
	}
	
	
	@RequestMapping("/memberXdmForm")
	public String memberXdomForm(MemberVo vo,Model model) {
		
		Member member = service.selectOne(vo);
		
		
		model.addAttribute("item",member);
		
		
		return "xdm/infra/member/memberXdmForm";
	}
	
	@RequestMapping("/memberUpdt")
	public String memberUpdt(Member dto) {
		
		service.update(dto);
		
		return "redirect:/memberXdmList";
	}
	
	@RequestMapping("/memberInsert")
	public String memberInsert(Member dto) {
		
		service.insert(dto);
		
		return "redirect:/memberXdmList";
	}
	
	@RequestMapping("/memberDel")
	public String memberDel(Member dto) {
		
		service.delete(dto);
		
		return "redirect:/memberXdmList";
	}
	
	@RequestMapping("/memberUele")
	public String memberUele(Member dto) {
		
		service.uelete(dto);
		
		return "redirect:/memberXdmList";
	}
	
	
	@RequestMapping("/memberXdmInsert")
	public String memberXdmInsert(Member dto) {
		
		service.insert(dto);
		
		return "user/infra/userView/userLogin";
	}
	
	

	
	@ResponseBody
	@RequestMapping("/login")
	public Map<String, Object> loginMember(MemberVo vo, HttpSession httpSession ) {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.selectTwo(vo);
		
		if(rtMember != null) {
			
			httpSession.setMaxInactiveInterval(60*60);	//60min
			httpSession.setAttribute("sessionId", vo.getId());
			
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
		}else {
			returnMap.put("rt", "fail");
		}
		
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping("/logout")
	public Map<String, Object> logoutMember(HttpSession httpSession ) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	

	@ResponseBody
	@RequestMapping("/check")
	public Map<String, Object> checkName(MemberVo vo) {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int rtNum = service.selectOneCheckId(vo);
		
		if(rtNum == 0) {
			returnMap.put("rt", "available");
			
		}else {
			returnMap.put("rt", "unavailable");
		}
		
		return returnMap;
	}
}
