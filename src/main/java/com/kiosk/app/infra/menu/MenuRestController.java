package com.kiosk.app.infra.menu;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.AbstractController;


@RestController
@RequestMapping("/menuPop")
public class MenuRestController extends AbstractController {

		@Autowired
		MenuServiceImpl service;
		
		@RequestMapping(value = "", method = RequestMethod.GET)
//		@GetMapping("")
		public List<Menu> selectList(MenuVo vo) throws Exception {
			List<Menu> list = service.selectList(vo);
			return list;
		}
		

		@RequestMapping(value = "/{seq}", method = RequestMethod.GET)
//		@GetMapping("/{seq}")
		public Menu selectOne(@PathVariable String seq, MenuVo vo) throws Exception {
			vo.setSeq(seq);
			Menu item = service.selectOne(vo);
			return item;
		}
		

		@RequestMapping(value = "", method = RequestMethod.POST)
//		@PostMapping("")
		public String insert(@RequestBody Menu dto) throws Exception {
			service.insert(dto);
			return dto.getSeq();
		}
		
		
		@RequestMapping(value = "/{seq}", method = RequestMethod.PUT)
//		@PatchMapping("/{seq}")
//		@PutMapping("/{seq}")
		public void update(@PathVariable String seq, @RequestBody Menu dto) throws Exception {
			dto.setSeq(seq);
			service.update(dto);
		}


		@Override
		protected ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response)
				throws Exception {
			// TODO Auto-generated method stub
			return null;
		}

}
