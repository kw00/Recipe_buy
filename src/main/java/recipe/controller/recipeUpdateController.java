package recipe.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import recipe.model.maincategory;
import recipe.model.recipe;
import recipe.model.recipeDao;

@Controller
public class recipeUpdateController {
	
	private static final String command = "/recipeupdate.recipe";
	private static final String getPage = "recipeUpdateForm";
	
	@Autowired
	@Qualifier("myRecipe")
	private recipeDao recipedao;
	
	@RequestMapping(value=command)
	public String detailRecipe(@RequestParam(value="rnum", required=true) int rnum, Model model){
		System.out.println("========================�޾ƿ� ������ �ѹ�=================================");
		System.out.println(rnum);
		System.out.println("======================================================================");
		recipe Recipe =  recipedao.DetailRecipe(rnum);
		System.out.println("==============불러온 레시피 정보==================");
		System.out.println(Recipe.toString());
		System.out.println("============================================");
		List<maincategory> category = recipedao.getmainCategory();
		model.addAttribute("category", category);
		model.addAttribute("Recipe", Recipe);
		return getPage;
	}
}
