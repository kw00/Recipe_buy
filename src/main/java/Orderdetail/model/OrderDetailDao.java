package Orderdetail.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component("myOrderDetailDao")
public class OrderDetailDao {

	private final String namespace = "orderdetail.model.OrderDetail";
	// orderdetail.xml

	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public OrderDetailDao() { }	
	
	public Integer InsertData(OrderDetail bean) {
		Integer cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace + ".InsertData",bean);
		return cnt;
	}
	
	
	
	
	public List<OrderDetail> GetDataList() {
		List<OrderDetail> lists = new ArrayList<OrderDetail>();
		lists = sqlSessionTemplate.selectList(namespace + ".GetDataList"); // 맵퍼 파일을 부르는것
		return lists;
	}
	
	public int GetTotalCount( Map<String, String> map ) {
		int cnt = -1;
		cnt = sqlSessionTemplate.selectOne(namespace + ".GetTotalCount", map);
		return cnt;
	}
	
	public List<OrderDetail> GetDataList( Paging pageInfo,  Map<String, String> map ) {
		List<OrderDetail> lists = new ArrayList<OrderDetail>();
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit() );
		lists = sqlSessionTemplate.selectList(namespace + ".GetDataList", map, rowBounds);
		return lists;
	}

	

	public int DeleteData(int pmKey) {
		int cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace + ".DeleteData", pmKey);
		return cnt;
	}

	
	public OrderDetail GetData(String pmKey) {
		OrderDetail bean = null;
		bean = sqlSessionTemplate.selectOne(namespace + ".GetData",	pmKey);
		return bean;
	}

	
	public Integer UpdateData(OrderDetail bean) {
		Integer cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace + ".UpdateData", bean);
		return cnt;
	}

	
	public Integer DetailData(OrderDetail bean) {
		Integer cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace + ".DetailData", bean);
		return cnt;
	}
	
}