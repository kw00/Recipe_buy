package member.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;
import utility.Paging;

@Controller
public class UpdatePwdController {
	private static final String getPage = "MyPagePwd";
	private static final String gotoPage = "redirect:/";
	private static final String command = "/update_pwd.me";

	@Autowired
	@Qualifier("myMemberDao")
	private MemberDao memberDao;

	@RequestMapping(value = command, method = RequestMethod.GET)
	public String doGetAction(@RequestParam("num") int num, Model model, HttpSession session, HttpServletRequest request){
		System.out.println(num);
		System.out.println("현재위치는 UpdatePwdController");
		Member mem = (Member) session.getAttribute("loginfo");

		Member member = new Member();

		member = memberDao.GetMemberInfo(num);
		System.out.println(member);
		System.out.println(num);
		
		/*String phone = member.getPhone();

		member.setPhone1(phone.substring(0,3));
		member.setPhone2(phone.substring(3,7));
		member.setPhone3(phone.substring(7,11));*/

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

		/*if (result.hasErrors()) {
			System.out.println("--- 유효성 검사 실패 ---");
			mav.addObject("member", member);
			mav.setViewName(getPage);
			return mav;
		}*/

		/*String phone = member.getPhone1() + member.getPhone2() + member.getPhone3();
		member.setPhone(phone);*/

		int cnt = 0;

		cnt = memberDao.UpdateMyPageInfo(member);

		if (cnt > 0) {

			mav.addObject("message", "수정 완료되었습니다.");
			mav.setViewName(gotoPage);
			mav.setViewName("../result/result");

		} else {
			mav.addObject("message", "수정 실패하였습니다.");
			mav.setViewName(getPage);
			return new ModelAndView("../result/result");
		}

		/*System.out.println("---signup Post end---");*/
		return mav;
	}
}
