package member.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;

@Controller
public class LoginController {
	private static final String gotoPage = "redirect:/";
	private static final String command = "/login.me";
	private static final String command2 = "/logout.me";
	
	@Autowired
	@Qualifier("myMemberDao")
	private MemberDao memberDao;
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView doActionPOST(Member member, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException{
		System.out.println(this.getClass()+"POST방식");
		
		ModelAndView mav = new ModelAndView();
		
		Member login = this.memberDao.GetMember(member.getId());
		
		if(login==null){
			mav.addObject("message", "존재하지 않는 회원입니다.");
			mav.setViewName("../result/result");
			
			return mav;
		}else{
			if(member.getId().equals(login.getId())&&member.getPassword().equals(login.getPassword())){
				session.setAttribute("loginfo", login);
				session.setMaxInactiveInterval(1800); 
				System.out.println("갈 곳 : "+ session.getAttribute("destination"));
				if(session.getAttribute("destination")==null){
					mav.setViewName(gotoPage);
					
					return mav;
				}else{
					mav.setViewName((String)session.getAttribute("destination"));
				}
				
				
			}else{
				mav.addObject("message", "비밀번호를 확인해 주세요");
				mav.setViewName("../result/result");
				
				return mav;
			}
		}
		
		return mav;
	}
	
	@RequestMapping(value=command2, method=RequestMethod.GET)
	public String doGetAction(HttpSession session, HttpServletRequest request){
		session.invalidate();
		return gotoPage;
	}
	
}
