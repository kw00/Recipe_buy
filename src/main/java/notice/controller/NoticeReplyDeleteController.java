package notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import notice.model.NoticeDao;
import notice.model.Notice_replyDao;

@Controller
public class NoticeReplyDeleteController {
	private static final String command = "/redelete.nt";
	
	@Autowired
	@Qualifier("myNoticeReplyDao")
	private Notice_replyDao noticeReplyDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doActionGET(@RequestParam("restep") int restep, Model model,
		@RequestParam(value="num", required=false) int num){
		
		int cnt = 0; 

		cnt = noticeReplyDao.DeleteReNotice(restep);
		
		return "redirect:/detail.nt?num="+num;
	}
}
