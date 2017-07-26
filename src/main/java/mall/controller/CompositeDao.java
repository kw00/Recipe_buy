package mall.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import Orderdetail.model.Order;
import food.model.food;
import member.model.Member;

@Component("myCompositeDao")
public class CompositeDao {

	private final String namespace = "Orderdetail.model.Composite"; //composite.xml

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public CompositeDao() { }


	public List<Order> OrderMall2(Member loginfo) { 

		List<Order> lists = new ArrayList<Order>();
		lists=
		sqlSessionTemplate.selectList(namespace+".OrderMall2",loginfo.getId());
		System.out.println("OrderMall2 lists.size() : " +lists.size()); 
		// �ش� ���̵�� �ֹ��� ��(order ���̺��� mid ����)
		return lists;
	}
 



	public List<food> GetDataList() {
		List<food> lists = new ArrayList<food>();
		lists = sqlSessionTemplate.selectList(namespace + ".GetDataList");  
		return lists;
	} 
 



	public List<HashMap<String, Object>> ShowDetail(int pmkey) {
		Map<String, Integer> map = new HashMap<String, Integer>() ;
		map.put("oid", pmkey ) ; // oid�� �ֹ���ȣ ����.
		List<HashMap<String, Object>> maplists = null;

		maplists = 
			sqlSessionTemplate.selectList( namespace + ".ShowDetail2", map );
		
		return maplists;	
	}

}





