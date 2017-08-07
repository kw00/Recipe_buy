package mall.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import Orderdetail.model.MyCartList;
import food.model.foodDao;

@Controller
public class MallDeleteController{
	
	private static final String gotoPage = "redirect:/list.mall";
	private static final String command = "/delete.mall";
	
	
	@Autowired
	@Qualifier("MyFoodDao")
	private foodDao foodDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doActionGet(@RequestParam(value="fnum",required=true) int fnum,HttpSession session){
		System.out.println("fnum:"+fnum);
		MyCartList mycart = (MyCartList)session.getAttribute("mycart");
		mycart.deleteOrder(fnum);
		session.setAttribute("mycart", mycart );
		return gotoPage;
	}
}
