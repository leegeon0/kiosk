package com.kiosk.app.infra.index;

import com.kiosk.app.infra.customer.Customer;
import com.kiosk.app.infra.customer.CustomerServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class IndexController {

	@Autowired
	CustomerServiceImpl service;

	@RequestMapping(value="/") // value = / : 최상위 도메인
	public String biographyUserView() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// href = "/resources/css/style.css";
		
		// 아래의 jsp 파일 호출
		return "user/infra/biography/biographyUserView";
	}
	
	@RequestMapping(value="/indexXdmView") // value = / : 최상위 도메인
	public String indexXdmUserView() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// href = "/resources/css/style.css";
		
		// 아래의 jsp 파일 호출
		return "xdm/infra/index/indexXdmView";
	}
	
	@RequestMapping(value="/userProfile") // value = / : 최상위 도메인
	public String userProfile() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// href = "/resources/css/style.css";
		
		// 아래의 jsp 파일 호출
		return "xdm/infra/profile/userProfile";
	}
	
	@RequestMapping(value="/orderList") // value = / : 최상위 도메인
	public String orderList() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// href = "/resources/css/style.css";
		
		// 아래의 jsp 파일 호출
		return "user/infra/userView/orderList";
	}
	
	@RequestMapping(value="/userLogin") // value = / : 최상위 도메인
	public String userLogin() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// href = "/resources/css/style.css";
		
		// 아래의 jsp 파일 호출
		return "user/infra/userView/userLogin";
	}
	
	@RequestMapping(value="/userMain") // value = / : 최상위 도메인
	public String userMain() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// href = "/resources/css/style.css";
		
		// 아래의 jsp 파일 호출
		return "user/infra/userView/userMain";
	}
	
	@RequestMapping(value="/point") // value = / : 최상위 도메인
	public String point() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// href = "/resources/css/style.css";
		
		// 아래의 jsp 파일 호출
		return "user/infra/point/point";
	}
	
	@RequestMapping(value="/newSignUp") // value = / : 최상위 도메인
	public String newSignUp(Customer dto) {

//		service.insert(dto);

		return "user/infra/point/newSignUp";
	}
	
	@RequestMapping(value="/countStamp") // value = / : 최상위 도메인
	public String countStamp() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// href = "/resources/css/style.css";
		
		// 아래의 jsp 파일 호출
		return "user/infra/point/countStamp";
	}
	
	@RequestMapping(value="/payment") // value = / : 최상위 도메인
	public String payment() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// href = "/resources/css/style.css";
		
		// 아래의 jsp 파일 호출
		return "user/infra/payment/payment";
	}
	
	@RequestMapping(value="/orderComplete") // value = / : 최상위 도메인
	public String orderComplete() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// href = "/resources/css/style.css";
		
		// 아래의 jsp 파일 호출
		return "user/infra/payment/orderComplete";
	}
	
	@RequestMapping(value="/receipt") // value = / : 최상위 도메인
	public String receipt() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// href = "/resources/css/style.css";
		
		// 아래의 jsp 파일 호출
		return "user/infra/payment/receipt";
	}

	/*
	 * @RequestMapping(value="/order") // value = / : 최상위 도메인 public String order()
	 * {
	 * 
	 * 
	 * 
	 * 
	 * // 여기에서 서버단에서 필요한 작업을 수행한다.
	 * 
	 * // href = "/resources/css/style.css";
	 * 
	 * // 아래의 jsp 파일 호출 return "user/infra/order/order"; }
	 */
	@RequestMapping(value="/joinForm") // value = / : 최상위 도메인
	public String joinForm() {
		
		// 여기에서 서버단에서 필요한 작업을 수행한다.
		
		// href = "/resources/css/style.css";
		
		// 아래의 jsp 파일 호출
		return "xdm/infra/form/joinForm";
	}


}
