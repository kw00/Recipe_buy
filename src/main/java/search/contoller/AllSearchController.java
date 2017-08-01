package search.contoller;

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

import mainboard.model.MainBoard;
import mainboard.model.MainBoardDao;
import member.model.Member;
import member.model.MemberDao;
import notice.model.Notice;
import notice.model.NoticeDao;
import recipe.model.recipe;
import recipe.model.recipeDao;
import food.model.food;
import food.model.foodDao;
import utility.Paging;
import utility.Paging2;
@Controller
public class AllSearchController {
	private static final String getPage = "SearchList";
	private static final String command = "/list.search";
	
	@Autowired
	@Qualifier("myMainBoardDao")
	private MainBoardDao boardDao;
	
	@Autowired
	@Qualifier("MyFoodDao")
	private foodDao foodDao;
	
	@Autowired
	@Qualifier("myNoticeDao")
	private NoticeDao noticeDao;
	
	@Autowired
	@Qualifier("myRecipe")
	private recipeDao recipeDao;
	
	@RequestMapping(value=command)
	public ModelAndView doActionGET(
			@RequestParam(value="whatColumn", required=false) String whatColumn,
			@RequestParam(value="keyword", required=false) String keyword,
			@RequestParam(value="pageNumber", required=false) String pageNumber,
			@RequestParam(value="pageSize", required=false) String pageSize,
			HttpServletRequest reuqest
		){
			System.out.println("검색할 컬럼(whatColumn) : " + whatColumn + ", ");
			System.out.println("검색할 단어(keyword) : " + keyword + ", ");
			System.out.println("pageNumber : " + pageNumber + ", ");
			System.out.println("pageSize : " + pageSize + ", ");
			//한 페이지에 보여줄 건수(레코드 갯수)
			
			Map<String, String> b_map = new HashMap<String, String>();
			
			b_map.put("whatColumn", "title");
			b_map.put("keyword" , "%" +keyword + "%");
			
			Map<String, String> f_map = new HashMap<String, String>();
			
			f_map.put("whatColumn", "fname");
			f_map.put("keyword" , "%" +keyword + "%");
			
			Map<String, String> n_map = new HashMap<String, String>();
			
			n_map.put("whatColumn", "subject");
			n_map.put("keyword" , "%" +keyword + "%");
			
			Map<String, String> r_map = new HashMap<String, String>();
			
			r_map.put("whatColumn", "rname");
			r_map.put("keyword" , "%" +keyword + "%");
			
			int b_totalCount = boardDao.GetTotalCount(b_map);
			int f_totalCount = foodDao.GetTotalCount(f_map);
			int n_totalCount = noticeDao.GetTotalCount(n_map);
			int r_totalCount = recipeDao.TotalCount(r_map);
			
			System.out.println("전체 행수(b_totalCount) :  " + b_totalCount);
			System.out.println("전체 행수(f_totalCount) :  " + f_totalCount);
			System.out.println("전체 행수(n_totalCount) :  " + n_totalCount);
			System.out.println("전체 행수(r_totalCount) :  " + r_totalCount);
			String url = reuqest.getContextPath() + this.command;
			
			System.out.println("url : " + url); //url : /ex/list.ab
			
			ModelAndView mav = new ModelAndView();
			
			
			Paging b_pageInfo = new Paging( pageNumber, pageSize, b_totalCount, "/board.mainboard", whatColumn, keyword);
			Paging f_pageInfo = new Paging( pageNumber, pageSize, f_totalCount, "/list.fd", whatColumn, keyword);
			Paging n_pageInfo = new Paging( pageNumber, pageSize, n_totalCount, "/list.nt", whatColumn, keyword);
			Paging2 r_pageInfo = new Paging2( pageNumber, pageSize, r_totalCount, "/recipeList.recipe", whatColumn, keyword);
			
			List<MainBoard> b_Lists = boardDao.getBoardList(b_pageInfo, b_map);
			List<food> f_Lists = foodDao.fSelectAll(f_pageInfo, f_map);
			List<Notice> n_Lists = noticeDao.getNoticeList(n_pageInfo, n_map);
			List<recipe> r_Lists = recipeDao.GetRecipeList(r_pageInfo, r_map);
			
			System.out.println("조회된 건수 : " + b_Lists.size());
			System.out.println("조회된 건수 : " + f_Lists.size());
			System.out.println("조회된 건수 : " + n_Lists.size());
			System.out.println("조회된 건수 : " + r_Lists.size());
			
			mav.addObject("b_Lists", b_Lists);
			mav.addObject("b_pageInfo", b_pageInfo);
			mav.addObject("f_Lists", f_Lists);
			mav.addObject("f_pageInfo", f_pageInfo);
			mav.addObject("n_Lists", n_Lists);
			mav.addObject("n_pageInfo", n_pageInfo);
			mav.addObject("r_Lists", r_Lists);
			mav.addObject("r_pageInfo", r_pageInfo);
			mav.setViewName(getPage); 
			
			return mav;
	}
}
