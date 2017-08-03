package com.spring.ex;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import recipe.model.recipe;
import recipe.model.recipeDao;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	@Qualifier("myRecipe")
	private recipeDao recipeDao;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		List<recipe> newrecipe1 = recipeDao.getnew1234();
		List<recipe> newrecipe2 = recipeDao.getnew5678();
		
		model.addAttribute("newrecipe1", newrecipe1);
		model.addAttribute("newrecipe2", newrecipe2);
		
		return "home";
	}
	
}
