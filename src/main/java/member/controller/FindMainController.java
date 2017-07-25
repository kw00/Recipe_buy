package member.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;


@Controller
public class FindMainController {
	private static final String getPage = "FindMainForm";
	private static final String gotoPage = "../views/home";
	private static final String command = "/find.me";
	
	@Autowired
	@Qualifier("myMemberDao")
	private MemberDao memberDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doGetAction(){
		return getPage;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView doPostAction(@ModelAttribute("singup") @Valid Member member, BindingResult result){
		System.out.println("---signup Post start---");
		
		ModelAndView mav = new ModelAndView();
		
		boolean check = member.isBool();
		
		System.out.println("=========12231========"+check);
		
		String pwd1 = member.getPassword();
		String pwd2 = member.getPasswordcheck();
		
		System.out.println(pwd1+"============"+pwd2);
		
		if(!pwd1.equals(pwd2)){
			check = false;
		}
		
		member.setBool(check);
		
		System.out.println("================="+check);
		
		if(result.hasErrors()){
			System.out.println("--- ?��?��?�� �??�� ?��?�� ---");
			mav.addObject("member", member);
			mav.setViewName(getPage);
			return mav;
		}
		
		String phone = member.getPhone1()+member.getPhone2()+member.getPhone3();
		member.setPhone(phone);
		
		System.out.println(member);
		
		
		int cnt = 0;
		
		cnt = memberDao.InsertMember(member);
		
		if(cnt>0){
			System.out.println(member.getId()+"?�� ?��?���??�� 축하?��립니?��.");
			
			mav.addObject("message", member.getId()+"?�� ?��?���??��?�� 축하?��?��?��.");
			mav.addObject("url", gotoPage);
			mav.setViewName("../result/result");
			
		}else{
			System.out.println("?��?���??�� ?��?��.....");

			mav.addObject("message", "?��?���??��?�� ?��?��?��???��?��?��.");
			mav.addObject("url", getPage);
			return new ModelAndView("../result/result");
		}
		
		System.out.println("---signup Post end---");
		return mav;
	}
	
}
