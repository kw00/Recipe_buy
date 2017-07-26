package mall.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import Orderdetail.model.MyCartList;
import food.model.food;
import food.model.foodDao;

@Controller
public class CartAddController { 

	private static final String command = "/add.mall";

	@Autowired
	@Qualifier("MyFoodDao")
	public foodDao dao;

	@RequestMapping(value=command, method=RequestMethod.GET  )
	public String doActionPost(int fnum, HttpSession session
								,HttpServletRequest request) 
			throws IOException{ 

		
		food food = dao.Getfood(fnum);
		System.out.println("CartAddController GET");
		System.out.println("food.getFnum():"+food.getFnum());
		System.out.println("food.getFqty():"+food.getFqty());

		int oqty = Integer.parseInt(request.getParameter("fqty"));

		ModelAndView mav = new ModelAndView();

		/*if( session.getAttribute("loginfo") == null ){
			session.setAttribute("destination", 
								"redirect:/detail.prd?pmkey="+fnum);

			return "redirect:/LoginForm.me";	

		}else{*/
		MyCartList mycart = (MyCartList)session.getAttribute("mycart");
		System.out.println("mycart : "+mycart); 

		if (mycart == null) {
			mycart = new MyCartList() ; 
		}


		mycart.AddOrder(fnum, oqty); 

		session.setAttribute("mycart", mycart );

		return "redirect:/list.mall"; // CartListController.java�� �Ѿ

	}
}



