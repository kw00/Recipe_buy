package company.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.model.MemberDao;

@Controller
public class IntroductionController {
	private static final String getPage = "introduction";
	/*private static final String gotoPage = "signup.me";*/
	private static final String command = "/intro.cp";
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doGetAction(){
		System.out.println("현재위치 IntroductionController");
		return getPage;
	}
	

}
