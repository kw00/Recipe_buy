package recipe.controller;



import java.io.File;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;

import recipe.model.recipe;
import recipe.model.recipeDao;

@Controller
public class recipeDeleteController implements ServletContextAware{
	private static final String command = "/recipedelete.recipe";
	private static final String getPage = "redirect:/recipeList.recipe";
	
	@Autowired
	@Qualifier("myRecipe")
	private recipeDao recipedao;
	
	@Autowired
	ServletContext servletContext;
	
	@RequestMapping(value=command,method=RequestMethod.GET)
	public String UpdateRecipeGet(@RequestParam(value="rnum", required=true) int rnum){
		System.out.println("========================삭제에서 처리할 레시피 넘버=================================");
		System.out.println(rnum);
		System.out.println("======================================================================");
		int cnt = 0;
		String uploadPath = servletContext.getRealPath("/resources");
		recipe Recipe =  recipedao.DetailRecipe(rnum);
		cnt = recipedao.deleteRecipe(rnum);
		if(cnt == 0){
			System.out.println("삭제 실패");
		}else{
			System.out.println("=================삭제할 이미지===============");
			System.out.println(Recipe.getRimage());
			File destination2 = new File(uploadPath+File.separator+Recipe.getRimage());
			System.out.println(destination2);
			destination2.delete();
			System.out.println("=========================================");
		}
		return getPage;
	}

	@Override
	public void setServletContext(ServletContext arg0) {
		// TODO Auto-generated method stub
		servletContext = arg0;
	}
}
