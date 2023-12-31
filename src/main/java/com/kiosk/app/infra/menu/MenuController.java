package com.kiosk.app.infra.menu;

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

import com.kiosk.app.infra.star.Star;
import com.kiosk.app.infra.star.StarService;
import com.kiosk.app.infra.star.StarServiceImpl;
import com.kiosk.app.infra.star.StarVo;



@Controller
public class MenuController {

	@Autowired
	MenuServiceImpl service;
	
	
	@RequestMapping("/menuXdmList")
	public String menuXdmList(@ModelAttribute("vo") MenuVo vo,Model model) throws Exception {
		
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<Menu> list = service.selectList(vo);
			model.addAttribute("list",list);

		} else {
			// by pass
		}
		return "xdm/infra/menu/menuXdmList";
		
	}
	
	@RequestMapping(value="/order") // value = / : 최상위 도메인
	public String order(@ModelAttribute("vo") MenuVo vo,Model model) throws Exception {
		
		
		List<Menu> list = service.selectList(vo);
		model.addAttribute("list",list);
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// href = "/resources/css/style.css";
		
		// 아래의 jsp 파일 호출
		return "user/infra/order/order";
	}
	
	
	@RequestMapping("/menuXdmForm")
	public String menuXdomForm(MenuVo vo,Model model) {
		
		Menu menu = service.selectOne(vo);
		
		
		model.addAttribute("item",menu);
		
		
		return "xdm/infra/menu/menuXdmForm";
	}
	
	@RequestMapping("/menuUpdt")
	public String menuUpdt(Menu dto) {
		
		service.update(dto);
		
		return "redirect:/menuXdmList";
	}
	
	@RequestMapping("/menuInsert")
	public String menuInsert(Menu dto) {
		
		service.insert(dto);
		
		return "redirect:/menuXdmList";
	}
	
	@RequestMapping("/menuDel")
	public String menuDel(Menu dto) {
		
		service.delete(dto);
		
		return "redirect:/menuXdmList";
	}
	
	@RequestMapping("/menuUele")
	public String menuUele(Menu dto) {
		
		service.uelete(dto);
		
		return "redirect:/menuXdmList";
	}
	
	@ResponseBody
	@RequestMapping("/menu")
	public Map<String, Object> menuSelectList(MenuVo vo, HttpSession httpSession ) {
		
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		List<Menu> rtMenu = service.menuSelectList(vo);
		
		if(rtMenu != null) {
			
			httpSession.setMaxInactiveInterval(60*60);	//60min
			httpSession.setAttribute("sessionCategory", vo.getCategory());
			httpSession.setAttribute("sessionMenuName", vo.getMenuName());
			httpSession.setAttribute("sessionMenuPrice", vo.getMenuPrice());

			
			returnMap.put("rtMenu", rtMenu);
			returnMap.put("rt", "success");
		}else {
			returnMap.put("rt", "fail");
		}
		
		return returnMap;
	}
	
	
	@RequestMapping("/menuListXdmList")
	public String menuListXdomForm(@ModelAttribute("vo") MenuVo vo,Model model) {
		
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
				
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<MenuVo> menuList = service.menuList(vo);
			model.addAttribute("list", menuList);

		} else {
			// by pass
		}
		
		return "xdm/infra/menuList/menuListXdmList";
	}
	
	@RequestMapping("/menuListXdmForm")
	public String MenuListXdomForm(MenuVo vo,Model model) {
		
		Menu menu = service.selectOne(vo);
		
		
		model.addAttribute("item",menu);
		
		
		return "xdm/infra/menuList/menuListXdmForm";
	}
	

}
