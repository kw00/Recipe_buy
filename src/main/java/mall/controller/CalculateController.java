package mall.controller;

import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import Orderdetail.model.MyCartList;
import Orderdetail.model.OrderDao;
import Orderdetail.model.OrderDetail;
import Orderdetail.model.OrderDetailDao;
import food.model.foodDao;
import member.model.Member;
import member.model.MemberDao;

@Controller
public class CalculateController {

	@Autowired
	@Qualifier("myMemberDao")
	private MemberDao memberDao;
	
	@Autowired
	@Qualifier("MyFoodDao")
	foodDao fooddao;
	
	@Autowired
	@Qualifier("myOrderDao")
	private OrderDao orderDao ;
	
	@Autowired
	@Qualifier("myOrderDetailDao")
	private OrderDetailDao orderDetailDao ;
	
	@RequestMapping(value="/calculate.mall")
	public String doActionPost(HttpSession session	){
		
		MyCartList mycart = (MyCartList)session.getAttribute("mycart") ;
		if( mycart != null ){
			Map<Integer, Integer> maplists =  mycart.GetAllOrderLists() ;
			System.out.println("maplists.size():"+maplists.size());
			Set<Integer> keylist = maplists.keySet();
			System.out.println("keylist:"+keylist);
			Member mem = ((Member)session.getAttribute("loginfo"));
			System.out.println(mem.getId());
			orderDao.InsertData( mem.getId());
			
			int oid = orderDao.GetMaxOrderId() ;
			System.out.println("oid : " + oid );
			for( Integer pnum : keylist){
				Integer qty = maplists.get(pnum);
				fooddao.updateQty(pnum,qty);
				
				OrderDetail odBean = new OrderDetail();
				odBean.setOid(oid);
				odBean.setPnum(pnum);
				odBean.setQty(qty);
				orderDetailDao.InsertData(odBean);
				memberDao.UpdatePoint(mem.getId(),100);
				session.removeAttribute("shoplists");
				session.removeAttribute("mycart");
			}
		}
		
		return "../views/home";
	}
}
