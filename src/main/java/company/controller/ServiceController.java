package company.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.model.MemberDao;

@Controller
public class ServiceController {
	private static final String getPage = "service";
	/*private static final String gotoPage = "signup.me";*/
	private static final String command = "/service.cp";
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doGetAction(){
		System.out.println("현재위치 IntroductionController");
		return getPage;
	}
	

}
