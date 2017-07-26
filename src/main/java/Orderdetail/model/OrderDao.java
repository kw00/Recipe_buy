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
		// �α����� ȸ���� ���̵� orders ���̺� �ִ´�.
		// orders ���̺�  oid:�ֹ� ��ȣ, mid:ȸ�� ��ȣ, orderdate:�ֹ� ����
		
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
		// ���� �ֱ��� �ֹ���ȣ�� �����´�.
		return cnt;
	}
}




