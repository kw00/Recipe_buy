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
	private static final String command1 = "/add1.mall";
	
	
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
	@RequestMapping(value=command1, method=RequestMethod.GET)
	public String GetRecipeCart(String fqty,String fnum, HttpSession session,HttpServletRequest request)throws IOException{
		System.out.println("==========레시피에서 넘겨준 식재료 번호,수량======================");
		System.out.println(fnum);
		System.out.println(fqty);
		System.out.println("=====================================================");
		String[] fnumlists = fnum.split("-");
		String[] fqtylists = fqty.split("-");
		System.out.println(fnumlists.length);
		for(int i = 0; i<fnumlists.length; i++){
			food food = dao.Getfood(Integer.parseInt(fnumlists[i]));
			System.out.println("=====상품번호 출력=======");
			System.out.println(fnumlists[i]);
			System.out.println("=====================");
			System.out.println("=====해당 상품 번호=======");
			System.out.println("food.getFnum():"+food.getFnum());
			System.out.println("=====================");
			int oqty = Integer.parseInt(fqtylists[i]);
			MyCartList mycart = (MyCartList)session.getAttribute("mycart");
			System.out.println("mycart : "+mycart); 

			if (mycart == null) {
				mycart = new MyCartList() ; 
			}


			mycart.AddOrder(Integer.parseInt(fnumlists[i]), oqty); 

			session.setAttribute("mycart", mycart );
		}
		
		return "redirect:/list.mall";
	}
}



