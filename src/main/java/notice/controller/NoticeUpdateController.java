package notice.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import notice.model.Notice;
import notice.model.NoticeDao;

@Controller
public class NoticeUpdateController {
	private static final String getPage = "NoticeUpdateForm";
	private static final String gotoPage = "redirect:/list.nt";
	private static final String command = "/update.nt";

	@Autowired
	@Qualifier("myNoticeDao")
	private NoticeDao noticeDao;

	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doActionGET(@RequestParam("num") int num, Model model, 
			@RequestParam(value="pageNumber", required=false) String pageNumber){

		Notice notice = new Notice();

		notice = noticeDao.getNotice(num);

		if(pageNumber==null){
			pageNumber = "1";
		}

		model.addAttribute("notice", notice);
		model.addAttribute("pageNumber", pageNumber);

		return getPage;
	}

	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView doActionPOST(Notice notice, HttpServletRequest request, HttpServletResponse response, HttpSession session) throws IOException{

		ModelAndView mav = new ModelAndView();

		response.setContentType("text/html; charset=UTF-8");

		int cnt = 0;
		cnt = noticeDao.UpdateNotice(notice);
		mav.setViewName(gotoPage);

		return mav;
	}
}
