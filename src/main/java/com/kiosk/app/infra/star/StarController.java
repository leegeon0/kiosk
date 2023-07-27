package com.kiosk.app.infra.star;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class StarController {
	@Autowired
	StarServiceImpl service;

}
