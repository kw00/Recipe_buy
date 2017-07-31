package recipe.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import recipe.model.maincategory;
import recipe.model.recipe;
import recipe.model.recipeDao;

@Controller
public class recipeUpdateController implements ServletContextAware{
	
	private static final String command = "/recipeupdate.recipe";
	private static final String getPage = "recipeUpdateForm";
	private static final String gotoPage = "redirect:/recipeList.recipe";
	
	@Autowired
	@Qualifier("myRecipe")
	private recipeDao recipedao;
	
	@Autowired
	ServletContext servletContext;
	
	@RequestMapping(value=command,method=RequestMethod.GET)
	public String UpdateRecipeGet(@RequestParam(value="rnum", required=true) int rnum, Model model){
		System.out.println("========================�޾ƿ� ������ �ѹ�=================================");
		System.out.println(rnum);
		System.out.println("======================================================================");
		recipe Recipe =  recipedao.DetailRecipe(rnum);
		System.out.println("==============불러온 레시피 정보==================");
		System.out.println(Recipe.toString());
		System.out.println("============================================");
		List<maincategory> category = recipedao.getmainCategory();
		model.addAttribute("category", category);
		model.addAttribute("Recipe", Recipe);
		return getPage;
	}
	@RequestMapping(value=command,method=RequestMethod.POST)
	public ModelAndView UpdateRecipePost(HttpServletRequest request,recipe recipe,MultipartFile upload,
			HttpServletResponse response)throws IOException{
		ModelAndView mav = new ModelAndView();
		System.out.println("===========수정할 정보==========");
		System.out.println(recipe);
		System.out.println("=============================");
		String uploadPath = servletContext.getRealPath("/resources");
		System.out.println("uploadPath : "+uploadPath);
		System.out.println("============================================");
		System.out.println("===============���� ���� �̹��� UUID ó���۾�==================");
		String filename = upload.getOriginalFilename();
		System.out.println("filename : "+filename);
		String realFileNm = "";
		String origin = "";
		if(filename.equals("")){
			 origin = recipe.getUpload2();
			 recipe.setRimage(origin);
		}else{
			String filename_ext = filename.substring(filename.lastIndexOf(".")+1);
			filename_ext = filename_ext.toLowerCase();
			String[] allow_file = {"jpg","png","bmp","gif"};
			int cnt = 0; 
	        for(int i=0; i<allow_file.length; i++) {
	            if(filename_ext.equals(allow_file[i])){
	               cnt++; }
	            }
	        if(cnt == 0) {
	            PrintWriter print = response.getWriter(); 
	            print.print("NOTALLOW_"+filename); 
	            print.flush(); 
	            print.close();
	         } else {
		         SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss"); 
		         String today= formatter.format(new java.util.Date()); 
		         realFileNm = today+UUID.randomUUID().toString() + filename.substring(filename.lastIndexOf("."));
		         System.out.println("realFileNm : "+realFileNm);//����� �����̸�
		         recipe.setRimage(realFileNm);
	         }
	        System.out.println("recipe.getRimage() : "+recipe.getRimage());
		}
    	System.out.println("=======================================================");
    	int update = 0;
    	update = recipedao.UpdateRecipe(recipe);
    	if(update !=0){
			if(filename.equals("")){
				mav.setViewName(gotoPage);
			}else{
				System.out.println(origin);
				File destination = new File(uploadPath+File.separator+realFileNm);
				File destination2 = new File(uploadPath+File.separator+recipe.getUpload2());
				System.out.println("====================");
				System.out.println(destination);
				System.out.println(destination2);
				System.out.println("====================");
				mav.setViewName(gotoPage);
				try{
					upload.transferTo(destination);
					destination2.delete();
				}catch (IllegalStateException e) {
					// TODO: handle exception
					e.printStackTrace();
				}catch (IOException e) {
					// TODO: handle exception
					e.printStackTrace();
				}
			}
			
		}else{
			mav.setViewName(getPage);
		}
		return mav;
	}
	@Override
	public void setServletContext(ServletContext arg0) {
		// TODO Auto-generated method stub
		servletContext = arg0;
	}
	
}