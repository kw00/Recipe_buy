package fridge.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FridgeController {
	private static final String getPage = "fridgeMain";
	/*private static final String gotoPage = "signup.me";*/
	private static final String command = "/fridge.fr";
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doGetAction(){
		System.out.println("현재위치 FridgeController");
		return getPage;
	}

}
