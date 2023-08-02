package com.kiosk.app.infra.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {
	@Autowired
	CodeServiceImpl service;
	
	
	@RequestMapping("/codeXdmList")
	public String kioskCodeXdmList(@ModelAttribute("vo") CodeVo vo,Model model) {
		
		
		vo.setShKeyword(vo.getShKeyword() == null ? "": vo.getShKeyword()); 
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<Code> list = service.selectList(vo);
			model.addAttribute("list",list);
		} else {
			// by pass
		}
		
		
		return "xdm/infra/code/codeXdmList";
	}
	@RequestMapping("/codeXdmForm")
	public String kioskCodeXdmForm(CodeVo vo,Model model) {
		
//		System.out.println("vo.getSeq(): " + vo.getSeq());
		
		Code code = service.selectOne(vo);
		
//		System.out.println("codeGroup.getSeq():" + codeGroup.getSeq());
		
//		왼쪽의 list 는 jsp에서 사용할 변수명
		model.addAttribute("item",code);
		
//		model.addAttribute("list",service.selectList(); 위에 두줄 대신에 사용가능
		
		return "xdm/infra/code/codeXdmForm";
	}
	
	
	@RequestMapping("/codeUpdt")
	public String kioskCodeUpdt(Code dto) {
		
		System.out.println("codeUpdt");
		service.update(dto);
		
		
		return "redirect:/codeXdmList";
	}
	
	@RequestMapping("/codeDel")
	public String kioskCodeDel(Code dto) {
		
		System.out.println("codeDel");
		service.delete(dto);
		
		
		return "redirect:/codeXdmList";
	}
	
	
	@RequestMapping("/codeInsert")
	public String kioskCodeInsert(Code dto) {
		
		System.out.println("codeInsert");
		service.insert(dto);
		
		
		return "redirect:/codeXdmList";
	}
	
	@RequestMapping("/codeUele")
	public String kioskCodeUele(Code dto) {
		
		System.out.println("codeUele");
		service.uelete(dto);
		
		
		return "redirect:/codeXdmList";
		// 경로가 없다면 redirect:/ 추가
		// 경로가 있다면 해당 JSP로 return
	}
	

	
	@RequestMapping("/codencodegroupXdmList")
	public String codencodegroupXdmList(@ModelAttribute("vo") CodeVo vo,Model model) {
		
		
		vo.setShKeyword(vo.getShKeyword() == null ? "": vo.getShKeyword()); 
		
		vo.setParamsPaging(service.selectOneCount(vo));
		
		if(vo.getTotalRows()>0) {
			List<CodeVo> selectCodeGroupList = service.selectCodeGroupList(vo);
			model.addAttribute("list",selectCodeGroupList);
		} else {
			// by pass
		}
		
		
		return "xdm/infra/codencodegroup/codencodegroupXdmList";
	}
	
	
	
}
