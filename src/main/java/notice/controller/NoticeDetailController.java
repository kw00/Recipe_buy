package notice.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import notice.model.Notice;
import notice.model.NoticeDao;

@Controller
public class NoticeDetailController {
	private static final String getPage = "NoticeDetail";
	private static final String command = "/detail.nt";
	
	@Autowired
	@Qualifier("myNoticeDao")
	private NoticeDao noticeDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doActionGET(@RequestParam("num") int num, Model model,
		@RequestParam(value="pageNumber", required=false) String pageNumber){
		Notice notice = new Notice();
		
		notice = noticeDao.getNotice(num);
		
		noticeDao.UpReadCount(num);
		
		if(pageNumber==null){
			pageNumber = "1";
		}
		
		model.addAttribute("notice", notice);
		model.addAttribute("pageNumber", pageNumber);
		
		return getPage;
	}
	
}
