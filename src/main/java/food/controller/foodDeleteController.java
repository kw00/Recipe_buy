package food.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import food.model.foodDao;

@Controller
public class foodDeleteController {
	private static final String gotoPage = "redirect:/list.fd";
	private static final String command = "/delete.fd";
	
	@Autowired
	@Qualifier("MyFoodDao")
	foodDao dao;
	
	@RequestMapping(value=command, method=RequestMethod.GET )
	public String doActionGet(@RequestParam(value="fnum", required=true) int fnum) {
		int cnt = -1;
		cnt = dao.Deletefood(fnum);
		return gotoPage;
	}
}
