package notice.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import notice.model.Notice;
import notice.model.NoticeDao;
import utility.Paging;

@Controller
public class NoticeListController {
	private static final String getPage = "NoticeList";
	private static final String command = "/list.nt";
	
	@Autowired
	@Qualifier("myNoticeDao")
	private NoticeDao noticeDao;
	
	@RequestMapping(value=command)
	public ModelAndView doActionGET(
			@RequestParam(value="whatColumn", required=false) String whatColumn,
			@RequestParam(value="keyword", required=false) String keyword,
			@RequestParam(value="pageNumber", required=false) String pageNumber,
			@RequestParam(value="pageSize", required=false) String pageSize,
			HttpServletRequest reuqest
		){
			
			Map<String, String> map = new HashMap<String, String>();
			
			map.put("whatColumn", whatColumn);
			map.put("keyword" , "%" +keyword + "%");
			
			int totalCount = noticeDao.GetTotalCount(map);
			
			String url = reuqest.getContextPath() + this.command;
			
			ModelAndView mav = new ModelAndView();
			
			
			Paging pageInfo = new Paging( pageNumber, pageSize, totalCount, url, whatColumn, keyword);
			
			List<Notice> nt_Lists = noticeDao.getNoticeList(pageInfo, map);
			
			mav.addObject("nt_Lists", nt_Lists);
			mav.addObject("pageInfo", pageInfo);
			mav.setViewName(getPage); 
			
			return mav;
	}
}
