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
public class NoticeInsertController {
	private static final String getPage = "NoticeInsertForm";
	private static final String gotoPage = "redirect:/list.nt";
	private static final String command = "/insert.nt";
	
	@Autowired
	@Qualifier("myNoticeDao")
	private NoticeDao noticeDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doActionGET(Model model, @RequestParam(value="pageNumber", required=false) String pageNumber){
		
		if(pageNumber==null){
			pageNumber = "1";
		}
		
		model.addAttribute("pageNumber", pageNumber);
		
		return getPage;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView doActionPOST(@ModelAttribute("nt_insert") @Valid Notice notice, BindingResult result, HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		int cnt = 0;
		
		if(result.hasErrors()){
			System.out.println("유효성 검사 실패.");
			mav.setViewName(getPage);
			return mav;
		}
		
		notice.setIp(request.getRemoteAddr());
		
		cnt = noticeDao.InsertNotice(notice);
		
		mav.setViewName(gotoPage);
		
		return mav;
	}
}
