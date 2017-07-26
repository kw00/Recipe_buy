package mall.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import Orderdetail.model.MyCartList;
import Orderdetail.model.ShoppingInfo;
import food.model.food;
import food.model.foodDao;

@Controller
public class CartListController { // CartAddController.java���� �Ѿ��
	private static final String getPage = "MallList";
	private static final String command = "/list.mall";


	@Autowired
	@Qualifier("MyFoodDao")
	private foodDao foodDao;	

	@RequestMapping(value=command )
	public String doActionPost( HttpSession session){
		
		MyCartList mycart = (MyCartList)session.getAttribute("mycart") ; 

		Map<Integer, Integer> maplists =  mycart.GetAllOrderLists() ;

		Set<Integer> keylist = maplists.keySet() ;

		System.out.println("keylist.size():"+keylist.size());
		

		List<ShoppingInfo> shoplists = new ArrayList<ShoppingInfo>() ;

		int totalAmount = 0 ; 
		
		for( Integer fnum : keylist){
			Integer fqty = maplists.get(fnum) ;
			System.out.println("fnum:"+fnum+", qty:"+fqty);
			food bean = this.foodDao.Getfood( fnum ) ;


			ShoppingInfo shopInfo = new ShoppingInfo() ;

			/*int amount = fqty * bean.getFprice() ; // 5 * 1000
			totalAmount += amount ;
			
			shopInfo.setFamount( amount );*/
			shopInfo.setFname( bean.getFname() ); 
			shopInfo.setFnum( fnum ); 
			shopInfo.setFprice( bean.getFprice() );  
			shopInfo.setFqty( fqty ) ;
			shopInfo.setFpoint(bean.getFpoint());
			shopInfo.setFcompany(bean.getFcompany());
			shopInfo.setFimage(bean.getFimage());
			shoplists.add( shopInfo ) ; 
		}

		session.setAttribute( "shoplists" , shoplists );
		//shoplists:�ֹ��� ��ǰ��ȣ�� ����, ��ǰ��, ���� ���� ������� Ŭ����

		session.setAttribute( "totalAmount" , totalAmount );
		return getPage;
	}
}