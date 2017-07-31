package member.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import member.model.Member;
import member.model.MemberDao;
import utility.Paging;

@Controller
public class MemberListController {
	private static final String getPage = "MemberList";
	private static final String command = "/list.me";
	
	@Autowired
	@Qualifier("myMemberDao")
	private MemberDao memberDao;
	
	@RequestMapping(value=command)
	public ModelAndView doActionGET(
			@RequestParam(value="whatColumn", required=false) String whatColumn,
			@RequestParam(value="keyword", required=false) String keyword,
			@RequestParam(value="pageNumber", required=false) String pageNumber,
			@RequestParam(value="pageSize", required=false) String pageSize,
			HttpServletRequest request, Model model, HttpSession session
		){
			ModelAndView mav = new ModelAndView();
			
			Member mem = (Member) session.getAttribute("loginfo");
			
			if(session.getAttribute("loginfo")==null){
				
				mav.addObject("message", "관리자로 로그인 하셔야 이용 가능합니다.");
				mav.addObject("url", request.getContextPath());
				mav.setViewName("../result/result");
				
				return mav;
			}else{
				if(mem.getAdmin().equals("1")){
					
				mav.addObject("message", "관리자만 사용 가능합니다.");
				mav.addObject("url", request.getContextPath());
				mav.setViewName("../result/result");
				
				return mav;
				}
			}
			
			
			
			System.out.println("검색할 컬럼(whatColumn) : " + whatColumn + ", ");
			System.out.println("검색할 단어(keyword) : " + keyword + ", ");
			System.out.println("pageNumber : " + pageNumber + ", ");
			System.out.println("pageSize : " + pageSize + ", ");
			//한 페이지에 보여줄 건수(레코드 갯수)
			
			Map<String, String> map = new HashMap<String, String>();
			
			map.put("whatColumn", whatColumn);
			map.put("keyword" , "%" +keyword + "%");
			
			int totalCount = memberDao.GetTotalCount(map);
			
			System.out.println("전체 행수(totalCount) :  " + totalCount + ", ");
			String url = request.getContextPath() + this.command;
			
			System.out.println("url : " + url); //url : /ex/list.ab
			
			
			Paging pageInfo = new Paging( pageNumber, pageSize, totalCount, url, whatColumn, keyword);
			
			System.out.println("offset : " + pageInfo.getOffset() + ", ");
			System.out.println("limit : " + pageInfo.getLimit() + ", ");
			System.out.println("url : " + pageInfo.getUrl() + ", ");
			
			List<Member> Member = memberDao.getMemberList(pageInfo, map);
			// map 에는 whatColumn, keyword가 담겨있다.
			
			System.out.println("조회된 건수 : " + Member.size());
			mav.addObject("Member", Member);
			mav.addObject("pageInfo", pageInfo);
			mav.setViewName(getPage); 
			
			return mav;
	}
}
