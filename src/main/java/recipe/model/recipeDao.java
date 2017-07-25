package recipe.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import food.model.food;
import utility.Paging2;

@Component("myRecipe")
public class recipeDao {
	
	private final String namespace = "recipe.model.recipe";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate;
	
	public recipeDao() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int TotalCount(Map<String, String> map) {
		// TODO Auto-generated method stub
		int cnt = 0;
		cnt = sqlSessionTemplate.selectOne(namespace+".TotalCount",map);
		return cnt;
	}

	public List<recipe> GetRecipeList(Paging2 pageInfo, Map<String, String> map) {
		// TODO Auto-generated method stub
		List<recipe> list = null;
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(),pageInfo.getLimit());
		list = sqlSessionTemplate.selectList(namespace+".GetRecipeList", map, rowBounds);
		
		return list;
	}

	public List<maincategory> getmainCategory() {
		// TODO Auto-generated method stub
		List<maincategory> category = sqlSessionTemplate.selectList(namespace+".GetmainCategory");
		return category;
	}

	public int TotalFoodCount(Map<String, String> map) {
		// TODO Auto-generated method stub
		int cnt = 0;
		cnt = sqlSessionTemplate.selectOne(namespace+".GetFoodCount",map);
		return cnt;
	}

	public List<food> getFoodList(Paging2 pageInfo, Map<String, String> map) {
		// TODO Auto-generated method stub
		List<food> food = null;
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(),pageInfo.getLimit());
		food = sqlSessionTemplate.selectList(namespace+".GetFoodList",map,rowBounds);
		return food;
	}

	public int InsertReicpe(recipe recipe) {
		int cnt = 0;
		cnt = sqlSessionTemplate.insert(namespace+".InsertRecipe",recipe);
		return cnt;
	}

	public recipe DetailRecipe(int num) {
		// TODO Auto-generated method stub
		recipe Recipe = sqlSessionTemplate.selectOne(namespace+".DetailRecipe",num);
		return Recipe;
	}
}
