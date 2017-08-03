package fridge.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import food.model.food;
import food.model.foodDao;
import utility.Paging;

@Controller
public class SearchFoodController {
	private static final String getPage = "searchFood";
	/*private static final String gotoPage = "signup.me";*/
	private static final String command = "/searchfood.fr";
	
	@Autowired
	@Qualifier("MyFoodDao")
	foodDao dao;
	
	@RequestMapping(command)
	public ModelAndView list(
			@RequestParam(value="whatColumn",required=false)String whatColumn,
			@RequestParam(value="keyword",required=false)String keyword,
			@RequestParam(value="pageNumber",required=false)String pageNumber,
			@RequestParam(value="pageSize",required=false)String pageSize,
			Model model, HttpServletRequest request){
		System.out.println(whatColumn+", "+keyword);
		
		Map<String, String> map  =new HashMap<String, String>();
		map.put("whatColumn", whatColumn);
		map.put("keyword", "%"+keyword+"%");
		
		int totalCount  = dao.GetTotalCount(map);
		
		ModelAndView mav = new ModelAndView();
		String url = request.getContextPath()+command;
		Paging pageInfo = new Paging(pageNumber, pageSize, totalCount, url, whatColumn, keyword);
		
		
		mav.setViewName(getPage);
		
		List<food> flists = dao.fSelectAll(pageInfo,map);
		mav.addObject("flists",flists);
		mav.addObject("pageInfo",pageInfo);
		return mav;
	}

}
