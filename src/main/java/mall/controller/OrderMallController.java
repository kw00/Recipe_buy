package mall.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import member.model.Member;

@Controller
public class OrderMallController { // main에서 나의 주문 내역 클릭 하면 온다.
	
	private static final String command = "/order.mall" ;	 
	
	@Autowired
	@Qualifier("myCompositeDao")
	private CompositeDao compositeDao;	
	   
	@RequestMapping(value=command )
	public String doActionPost( HttpSession session, Model model ){

		Member loginfo = (Member)session.getAttribute("loginfo") ;
		
		if( loginfo == null ){ 
			session.setAttribute("destination", "redirect:/order.mall");
			return "redirect:/LoginForm.me" ;			
			
		}else{ 
			 
			//lists : 현재 로그인 한 사람의 전체 쇼핑 주문 내역들을 담고 있는 컬렉션
			List<Orderdetail.model.Order> lists = this.compositeDao.OrderMall2( loginfo ) ;  
			  
			model.addAttribute( "orderlists", lists );
			
			return "ShopList";
		}
	}
}
