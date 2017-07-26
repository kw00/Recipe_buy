package notice.controller;

import javax.servlet.http.HttpServletRequest;
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

import notice.model.Notice;
import notice.model.NoticeDao;

@Controller
public class NoticeReplyController {
	private static final String getPage = "NoticeReplyForm";
	private static final String gotoPage = "redirect:/list.nt";
	private static final String command = "/reply.nt";
	
	@Autowired
	@Qualifier("myNoticeDao")
	private NoticeDao noticeDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doActionGET(Model model, 
			@RequestParam(value="pageNumber", required=false) String pageNumber,
			@RequestParam(value="ref", required=true) String ref,
			@RequestParam(value="restep", required=true) String restep,
			@RequestParam(value="relevel", required=true) String relevel){
		
		if(pageNumber==null){
			pageNumber = "1";
		}
		
		model.addAttribute("ref", ref);
		model.addAttribute("restep", restep);
		model.addAttribute("relevel", relevel);
		model.addAttribute("pageNumber", pageNumber);
		
		return getPage;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView doActionPOST(@ModelAttribute("nt_reply") @Valid Notice notice, BindingResult result, HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		int cnt = 0;
		
		if(result.hasErrors()){
			System.out.println("유효성 검사 오류.");
			mav.setViewName(getPage);
			return mav;
		}
		
		notice.setIp(request.getRemoteAddr());
		int relevel = notice.getRelevel();
		int restep = notice.getRestep();
		notice.setRelevel(relevel+1);
		notice.setRestep(restep+1);
		
		cnt = noticeDao.ReplyNotice(notice);
		
		mav.setViewName(gotoPage);
		
		return mav;
	}
}
