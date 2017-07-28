package notice.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import notice.model.Notice;
import notice.model.NoticeDao;
import notice.model.Notice_reply;
import notice.model.Notice_replyDao;

@Controller
public class NoticeDetailController {
	private static final String getPage = "NoticeDetail";
	private static final String command = "/detail.nt";
	
	@Autowired
	@Qualifier("myNoticeDao")
	private NoticeDao noticeDao;
	
	@Autowired
	@Qualifier("myNoticeReplyDao")
	private Notice_replyDao notice_replyDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doActionGET(@RequestParam("num") int num, Model model,
		@RequestParam(value="pageNumber", required=false) String pageNumber){
		Notice notice = new Notice();
		
		notice = noticeDao.getNotice(num);
		
		noticeDao.UpReadCount(num);
		
		List<Notice_reply> replyLists = notice_replyDao.getNoticeReplyList(num);
		
		if(pageNumber==null){
			pageNumber = "1";
		}
		
		model.addAttribute("notice", notice);
		model.addAttribute("pageNumber", pageNumber);
		model.addAttribute("replyLists", replyLists);
		
		return getPage;
	}
	
}
