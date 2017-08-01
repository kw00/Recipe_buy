package recipe.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import recipe.model.recipeDao;

@Controller
public class GoodBadUpdateController {
	
	
	@Autowired
	@Qualifier("myRecipe")
	private recipeDao recipedao;
	
	@ResponseBody
	@RequestMapping(value="/UpdateGood.recipe",method=RequestMethod.GET)
	public String checkGood(@RequestParam("rnum") String rnum,@RequestParam("memid") String memid){
		Map<String,String >map = new HashMap<String,String>();
		System.out.println("===================good 체크=================");
		System.out.println(rnum);
		System.out.println(memid);
		System.out.println("============================================");
		map.put("rnum", rnum);
		map.put("memid",memid);
		int check = 0;
		check = recipedao.CheckGood(map);
		System.out.println("==========체크된 반환 숫자========");
		System.out.println(check);
		System.out.println("=============================");
		return "{\"check\":"+check+"}";
	}
	
	@ResponseBody
	@RequestMapping(value="/UpdateGood.recipe",method=RequestMethod.POST)
	public String insertGood(@RequestParam("rnum") String rnum,@RequestParam("memid") String memid){
		System.out.println("=================업데이트할때==============");
		System.out.println(rnum);
		System.out.println(memid);
		System.out.println("=======================================");
		Map<String,String >map = new HashMap<String,String>();
		map.put("rnum", rnum);
		map.put("memid",memid);
		int insert = recipedao.InsertGood(map);  
		System.out.println(insert);
		return "{\"insert\":"+insert+"}";
	}
	
	@ResponseBody
	@RequestMapping(value="/UpdateBad.recipe",method=RequestMethod.GET)
	public String checkBad(@RequestParam("rnum") String rnum,@RequestParam("memid") String memid){
		Map<String,String >map = new HashMap<String,String>();
		System.out.println("===================good 체크=================");
		System.out.println(rnum);
		System.out.println(memid);
		System.out.println("============================================");
		map.put("rnum", rnum);
		map.put("memid",memid);
		int check = 0;
		check = recipedao.CheckBad(map);
		System.out.println("==========체크된 반환 숫자========");
		System.out.println(check);
		System.out.println("=============================");
		return "{\"check\":"+check+"}";
	}
	
	@ResponseBody
	@RequestMapping(value="/UpdateBad.recipe",method=RequestMethod.POST)
	public String insertBad(@RequestParam("rnum") String rnum,@RequestParam("memid") String memid){
		System.out.println("=================업데이트할때==============");
		System.out.println(rnum);
		System.out.println(memid);
		System.out.println("=======================================");
		Map<String,String >map = new HashMap<String,String>();
		map.put("rnum", rnum);
		map.put("memid",memid);
		int insert = recipedao.InsertBad(map);
		System.out.println(insert);
		return "{\"insert\":"+insert+"}";
	}
}
