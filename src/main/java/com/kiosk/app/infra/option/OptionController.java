package com.kiosk.app.infra.option;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class OptionController {
	
	@Autowired
	OptionServiceImpl service;

}
