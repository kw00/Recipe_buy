package member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import member.model.CheckId;
import member.model.CheckPwd;
import member.model.Member;
import member.model.MemberDao;

@Controller
public class MemberUpdateController {
	private static final String getPage = "UpdateMemberForm";
	private static final String gotoPage = "/list.me";
	private static final String command = "/update.me";

	@Autowired
	@Qualifier("myMemberDao")
	private MemberDao memberDao;

	@RequestMapping(value = command, method = RequestMethod.GET)
	public String doGetAction(@RequestParam("id") String id, Model model, HttpSession session, HttpServletRequest request){
		Member mem = (Member) session.getAttribute("loginfo");
		
		if(mem==null){
			
			model.addAttribute("message", "관리자로 로그인 하셔야 이용 가능합니다.");
			model.addAttribute("url", request.getContextPath());
			
			return "../result/result";
		}else{
			if(mem.getAdmin().equals("1")){
				
			model.addAttribute("message", "관리자만 사용 가능합니다.");
			model.addAttribute("url", request.getContextPath());
			
			return "../result/result";
			}
		}
		
		Member member = new Member();
		
		member = memberDao.GetMember(id);
		
		String phone = member.getPhone();
		
		member.setPhone1(phone.substring(0,3));
		member.setPhone2(phone.substring(3,7));
		member.setPhone3(phone.substring(7,11));
		
		model.addAttribute("member", member);
		return getPage;
	}

	@RequestMapping(value = command, method = RequestMethod.POST) 
	public ModelAndView doPostAction(@ModelAttribute("update") @Valid Member member, BindingResult result, HttpServletRequest request) {
		System.out.println("---signup Post start---");

		ModelAndView mav = new ModelAndView();

		boolean check = member.isBool();

		String pwd1 = member.getPassword();
		String pwd2 = member.getPasswordcheck();

		if (!pwd1.equals(pwd2)) {
			check = false;
		}

		member.setBool(check);

		if (result.hasErrors()) {
			System.out.println("--- 유효성 검사 실패 ---");
			mav.addObject("member", member);
			mav.setViewName(getPage);
			return mav;
		}

		String phone = member.getPhone1() + member.getPhone2() + member.getPhone3();
		member.setPhone(phone);

		int cnt = 0;

		cnt = memberDao.UpdateMember(member);

		if (cnt > 0) {

			mav.addObject("message", "업데이트 완료!");
			mav.addObject("url", request.getContextPath()+gotoPage);
			mav.setViewName("../result/result");

		} else {
			mav.addObject("message", "업데이트 실패..");
			mav.addObject("url", getPage);
			return new ModelAndView("../result/result");
		}

		System.out.println("---signup Post end---");
		return mav;
	}

}
