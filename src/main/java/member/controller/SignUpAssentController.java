package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import member.model.MemberDao;


@Controller
public class SignUpAssentController {
	private static final String getPage = "SignUpAssent";
	private static final String gotoPage = "signup.me";
	private static final String command = "/signupAssent.me";
	
	@Autowired
	@Qualifier("myMemberDao")
	private MemberDao memberDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doGetAction(){
		return getPage;
	}
	

}
