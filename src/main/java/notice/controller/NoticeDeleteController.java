package notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import notice.model.NoticeDao;

@Controller
public class NoticeDeleteController {
	private static final String command = "/delete.nt";
	
	@Autowired
	@Qualifier("myNoticeDao")
	private NoticeDao noticeDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doActionGET(@RequestParam("num") int num, Model model,
		@RequestParam(value="pageNumber", required=false) String pageNumber){
		
		int cnt = 0;

		cnt = noticeDao.DeleteNotice(num);
		
		return "redirect:/list.nt?pageNumber="+pageNumber;
	}
}
