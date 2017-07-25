package recipe.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import recipe.model.recipe;
import recipe.model.recipeDao;

@Controller
public class recipeDetailController {
	
	private static final String command = "/detailRecipe.recipe";
	private static final String getPage = "reicpeDetailForm";
	
	@Autowired
	@Qualifier("myRecipe")
	private recipeDao recipedao;
	
	@RequestMapping(value=command)
	public String detailRecipe(@RequestParam(value="num", required=true) int num, Model model){
		System.out.println("========================받아온 레시피 넘버=================================");
		System.out.println(num);
		System.out.println("======================================================================");
		recipe Recipe =  recipedao.DetailRecipe(num);
		model.addAttribute("Recipe", Recipe);
		return getPage;
	}
}
