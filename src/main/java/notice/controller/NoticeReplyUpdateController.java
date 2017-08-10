package notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import notice.model.Notice_reply;
import notice.model.Notice_replyDao;

@Controller
public class NoticeReplyUpdateController {
	private static final String gotoPage = "redirect:/detail.nt?num=";
	private static final String command = "/reupdate.nt";

	@Autowired
	@Qualifier("myNoticeReplyDao")
	private Notice_replyDao noticeReplyDao;

	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doActionGET(
			@RequestParam("num") int num, 
			@RequestParam("nnum") int nnum, 
			@RequestParam("content") String content, 
			Model model){

		Notice_reply reply = new Notice_reply();
		reply.setNum(num);
		reply.setContent(content);
		int cnt = noticeReplyDao.reupdate(reply);

		return gotoPage+nnum;
	}
}
