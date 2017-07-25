package food.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import food.model.food;
import food.model.foodDao;

@Controller
public class foodUpdateController {
		private static final String getPage = "foodUpdateForm";
		private static final String gotoPage = "redirect:/list.fd";
		private static final String command = "/update.fd";
		
		@Autowired
		@Qualifier("MyFoodDao")
		foodDao dao;
		
		@RequestMapping(value=command, method=RequestMethod.GET )
		public String doActionGet(@RequestParam(value="fnum", required=true) int fnum, Model model) {

			food food = dao.Getfood(fnum); 
			model.addAttribute("food", food);
			return getPage;
		}
		
		@RequestMapping(value=command, method=RequestMethod.POST )
		public ModelAndView doActionPost(food bean){
			ModelAndView mav = new ModelAndView();
			int cnt = -1;
			cnt = dao.Updatefood(bean);
			mav.setViewName(gotoPage);
			return mav;
		}
}
