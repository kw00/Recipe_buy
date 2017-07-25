package food.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;




@Component("MyFoodDao")
public class foodDao {
	
	private final String namespace="food.model.food";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;

	public foodDao() {
	}

	public List<food> fSelectAll(Paging pageInfo, Map<String, String> map) {
		RowBounds rowbounds = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());
		List<food> lists = sqlSessionTemplate.selectList(namespace+".fSelectAll",map,rowbounds);
		return lists;
	}
	
	public int Insertfood(food bean) {
		int cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace+".Insertfood",bean);
		return cnt;
	}

	public int Deletefood(int fnum) {
		int cnt = -1;
		cnt = sqlSessionTemplate.delete(namespace+".Deletefood",fnum);
		return cnt;
	}
	
	public food Getfood(int fnum) {
		food food = null;
		food = (food)this.sqlSessionTemplate.selectOne(namespace+".Getfood", Integer.valueOf(fnum));
		return food;
	}

	public int Updatefood(food bean) {
		int cnt = -1;
		cnt = sqlSessionTemplate.update(namespace+".Updatefood",bean);
		return cnt;
	}

	public food selectByNum(int fnum) {
		food food = sqlSessionTemplate.selectOne(namespace+".Detailfood", fnum);
		return food;
	}

	public int GetTotalCount(Map<String, String> map) {
		int  cnt = -1;
		cnt   =  sqlSessionTemplate.selectOne(namespace+".GetTotalCount",map);
		return cnt;
	}
	
	
}
