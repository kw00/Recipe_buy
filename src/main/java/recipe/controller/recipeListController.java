package recipe.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import recipe.model.recipe;
import recipe.model.recipeDao;
import utility.Paging2;

@Controller
public class recipeListController {
	private static final String command = "/recipeList.recipe";
	private static final String gotoPage = "recipeList";
	
	@Autowired
	@Qualifier("myRecipe")
	private recipeDao recipedao;
	
	@RequestMapping(value=command,method=RequestMethod.GET)
	public ModelAndView getList(
			@RequestParam(value="whatColumn", required=false) String whatColumn,
			@RequestParam(value="keyword", required=false) String keyword,
			@RequestParam(value="pageNumber", required=false) String pageNumber,
			@RequestParam(value="pageSize", required=false) String pageSize,
			@RequestParam(value="mcategory", required=false) String mcategory,
			HttpServletRequest req){
		System.out.println("============검색==============");
		System.out.println("검색할 컬럼 : "+whatColumn);
		System.out.println("검색할 단어 : "+keyword);
		System.out.println("=============================");
		System.out.println("===========페이징==============");
		System.out.println("페이지 번호 : "+pageNumber);
		System.out.println("페이지 사이즈 : "+pageSize);
		System.out.println("=============================");
		
		Map<String,String> map = new HashMap<String, String>();
		map.put("whatColumn", whatColumn);
		map.put("keyword", "%"+keyword+"%");
		map.put("mcategory", mcategory);
		int totalCount = recipedao.TotalCount(map);
		System.out.println("======리스트 총 갯수==============");
		System.out.println("총 갯수 : "+totalCount);
		System.out.println("=============================");
		
		String url = req.getContextPath()+this.command;
		System.out.println("========url=========");
		System.out.println(url);
		System.out.println("=====================");
		
		ModelAndView mav = new ModelAndView();
		Paging2 pageInfo = new Paging2(pageNumber, pageSize, totalCount, url, whatColumn, keyword);
		List<recipe> list = recipedao.GetRecipeList(pageInfo,map);
		System.out.println(list);
		mav.addObject("list", list);
		mav.addObject("pageInfo", pageInfo);
		mav.addObject("totalcount", totalCount);
		mav.setViewName(gotoPage);
		return mav;
	}
}
