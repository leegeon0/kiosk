package com.kiosk.app.infra.menu;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class MenuController {

	@Autowired
	MenuServiceImpl service;
}
