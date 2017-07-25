package food.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import food.model.food;
import food.model.foodDao;

@Controller
public class foodDetailController {


		private static final String command = "/detail.fd";
		private static final String gotoPage = "foodDetail";
		
		@Autowired
		@Qualifier("MyFoodDao")
		foodDao dao;
		
		@RequestMapping(command)
		public String list(@RequestParam int fnum, Model model){
			food food = dao.selectByNum(fnum);
			model.addAttribute("food", food);
			return gotoPage;
		}
}
