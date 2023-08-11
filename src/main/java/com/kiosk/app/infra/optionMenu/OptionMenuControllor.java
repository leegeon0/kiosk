package com.kiosk.app.infra.optionMenu;

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

import com.kiosk.app.infra.member.Member;
import com.kiosk.app.infra.member.MemberVo;
import com.kiosk.app.infra.menu.Menu;
import com.kiosk.app.infra.menu.MenuVo;

@Controller
public class OptionMenuControllor {

	@Autowired
	OptionMenuServiceImpl service;
	
	@RequestMapping("/optionMenuXdmList")
	public String optionMenuXdmList(@ModelAttribute("vo") OptionMenuVo vo,Model model) throws Exception {
		
		
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<OptionMenu> optionList = service.selectList(vo);
			model.addAttribute("list",optionList);
			
		} else {
			// by pass
		}
		
		return "xdm/infra/optionMenu/optionMenuXdmList";
		
	}
	
	
	@RequestMapping("/optionMenuXdmForm")
	public String optionMenuXdmForm(OptionMenuVo vo,Model model) {
		
		OptionMenu optionMenu = service.selectOne(vo);
		
		
		model.addAttribute("item",optionMenu);
		
		
		return "xdm/infra/optionMenu/optionMenuXdmForm";
	}
	
	@RequestMapping("/optionMneuUpdt")
	public String optionMenuUpdt(OptionMenu dto) {
		
		service.update(dto);
		
		return "redirect:/optionMenuXdmList";
	}
	
	@RequestMapping("/optionMenuInsert")
	public String optionMenuInsert(OptionMenu dto) {
		
		service.insert(dto);
		
		return "redirect:/optionMenuXdmList";
	}
	
	@RequestMapping("/optionMenuDel")
	public String optionMenuDel(OptionMenu dto) {
		
		service.delete(dto);
		
		return "redirect:/optionMenuXdmList";
	}
	
	@RequestMapping("/optionMenuUele")
	public String optionMenuUele(OptionMenu dto) {
		
		service.uelete(dto);
		
		return "redirect:/optionMenuXdmList";
	}

	@ResponseBody
	@RequestMapping("/option")
	public Map<String, Object> optionSelectList(OptionMenuVo vo, HttpSession httpSession){
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		List<OptionMenu> rtOption = service.optionSelectList(vo);
		
		if(rtOption != null) {
			httpSession.setMaxInactiveInterval(60*60);	//60min
			httpSession.setAttribute("sessionOptionDelNy", vo.getOptionDelNy());
			httpSession.setAttribute("sessionOptionMenuSeq", vo.getOptionMenuSeq());
			returnMap.put("rtOption", rtOption);
			returnMap.put("rt", "success");
			
		}else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
		
	}

	
	
	
	

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("/login") public Map<String, Object> loginMember(MemberVo vo,
	 * HttpSession httpSession ) {
	 * 
	 * Map<String, Object> returnMap = new HashMap<String, Object>();
	 * 
	 * Member rtMember = service.selectTwo(vo);
	 * 
	 * if(rtMember != null) {
	 * 
	 * httpSession.setMaxInactiveInterval(60*60); //60min
	 * httpSession.setAttribute("sessionId", vo.getId());
	 * 
	 * returnMap.put("rtMember", rtMember); returnMap.put("rt", "success"); }else {
	 * returnMap.put("rt", "fail"); }
	 * 
	 * return returnMap; }
	 * 
	 * 
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping("/logout") public Map<String, Object>
	 * logoutMember(HttpSession httpSession ) { Map<String, Object> returnMap = new
	 * HashMap<String, Object>(); httpSession.invalidate(); returnMap.put("rt",
	 * "success"); return returnMap; }
	 * 
	 * 
	 * @ResponseBody
	 * 
	 * @RequestMapping("/check") public Map<String, Object> checkName(MemberVo vo) {
	 * 
	 * Map<String, Object> returnMap = new HashMap<String, Object>();
	 * 
	 * int rtNum = service.selectOneCheckId(vo);
	 * 
	 * if(rtNum == 0) { returnMap.put("rt", "available");
	 * 
	 * }else { returnMap.put("rt", "unavailable"); }
	 * 
	 * return returnMap; }
	 */
}
