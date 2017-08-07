package recipe.model;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import food.model.food;
import utility.Paging2;
import utility.Paging4;

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

	public List<recipe> GetRecipeList(Paging2 r_pageInfo, Map<String, String> map) {
		// TODO Auto-generated method stub
		List<recipe> list = null;
		RowBounds rowBounds = new RowBounds(r_pageInfo.getOffset(),r_pageInfo.getLimit());
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
	public int UpdateRecipe(recipe recipe) {
		// TODO Auto-generated method stub
		int update = 0;
		update = sqlSessionTemplate.update(namespace+".UpdateReicpe",recipe);
		return update;
	}

	public int InsertGood(Map<String, String> map) {
		// TODO Auto-generated method stub
		int update = 0;
		update = sqlSessionTemplate.insert(namespace+".InsertGood",map);
		return update;
	}

	public int CheckGood(Map<String, String> map) {
		// TODO Auto-generated method stub
		int check = 0;
		check = sqlSessionTemplate.selectOne(namespace+".CheckGood",map);
		return check;
	}

	public int CheckBad(Map<String, String> map) {
		// TODO Auto-generated method stub
		int check = 0;
		check = sqlSessionTemplate.selectOne(namespace+".CheckGood",map);
		return check;
	}

	public int InsertBad(Map<String, String> map) {
		// TODO Auto-generated method stub
		int update = 0;
		update = sqlSessionTemplate.insert(namespace+".InsertBad",map);
		return update;
	}
	
	public List<recipe> getbest1234() {
		List<recipe> recipe = null;
		
		recipe = sqlSessionTemplate.selectList(namespace+".getbest1234");
		
		return recipe;
	}
	
	public List<recipe> getbest5678() {
		List<recipe> recipe = null;
		
		recipe = sqlSessionTemplate.selectList(namespace+".getbest5678");
		
		return recipe;
	}

	public List<recipe> getnew1234() {
		List<recipe> recipe = null;
		
		recipe = sqlSessionTemplate.selectList(namespace+".getnew1234");
		
		return recipe;
	}

	public List<recipe> getnew5678() {
		List<recipe> recipe = null;
		
		recipe = sqlSessionTemplate.selectList(namespace+".getnew5678");
				
		return recipe;
	}

	public GoodBad GetOsusume(String rnum) {
		// TODO Auto-generated method stub
		GoodBad goodBad = null;
		goodBad = sqlSessionTemplate.selectOne(namespace+".GetGoodBad",rnum);
		return goodBad;
	}

	public List<recipe> GetRecipeList2(Paging4 pageInfo, Map<String, String> map) {
		// TODO Auto-generated method stub
		List<recipe> list = null;
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(),pageInfo.getLimit());
		list = sqlSessionTemplate.selectList(namespace+".GetRecipeList", map, rowBounds);
		
		return list;
	}
}
