package Orderdetail.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myOrderDao")
public class OrderDao {

	private final String namespace = "order.model.Order"; //order.xml

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public OrderDao() { }

	public Integer InsertData(String id) { // kim
		Order order = new Order() ;
		order.setMid(id); 
		Integer cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace + ".InsertData", order);
		// 로그인한 회원의 아이디를 orders 테이블에 넣는다.
		// orders 테이블  oid:주문 번호, mid:회원 번호, orderdate:주문 일자
		
		return cnt;
	}
	
	
	/*
	  OID MID                  ORDERDAT
	   12 choi                 16/11/25
	   13 choi                 16/11/25
	   14 choi                 16/11/25
	   15 choi                 16/11/25
	   16 choi                 16/11/25
	*/   

	public int GetMaxOrderId() {
		int cnt = -1;
		cnt = sqlSessionTemplate.selectOne( namespace + ".GetMaxOrderId");
		// 가장 최근의 주문번호를 가져온다.
		return cnt;
	}
}




