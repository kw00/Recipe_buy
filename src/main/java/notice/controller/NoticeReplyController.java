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
import notice.model.Notice_reply;
import notice.model.Notice_replyDao;

@Controller
public class NoticeReplyController {
	private static final String gotoPage = "redirect:/detail.nt";
	private static final String command = "/reply.nt";
	
	@Autowired
	@Qualifier("myNoticeReplyDao")
	private Notice_replyDao noticeReplyDao;
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView doActionPOST(@ModelAttribute("notice_reply") Notice_reply noticeReply, HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		int cnt = 0;
		String id = request.getParameter("id");
		//int restep = noticeReply.getRestep();
		noticeReply.setId(id);
		noticeReply.setIp(request.getRemoteAddr());
		//noticeReply.setRestep(restep+1);
		
		cnt = noticeReplyDao.ReplyNotice(noticeReply);
		
		mav.setViewName(gotoPage+"?num="+noticeReply.getRef());
		
		return mav;
	}
	@RequestMapping(value=command, method=RequestMethod.GET)
	public ModelAndView doActionGET(@ModelAttribute("notice_reply") Notice_reply noticeReply, HttpServletRequest request){
		ModelAndView mav = new ModelAndView();
		
		int cnt = 0;
		noticeReply.setIp(request.getRemoteAddr());
		int relevel = noticeReply.getRelevel();
		noticeReply.setRelevel(relevel+1);
		
		cnt = noticeReplyDao.ReplyReNotice(noticeReply);
		
		mav.setViewName(gotoPage+"?num="+noticeReply.getRef());
		
		return mav;
	}
}
