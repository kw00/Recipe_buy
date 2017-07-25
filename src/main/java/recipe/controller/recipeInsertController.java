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
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import recipe.model.maincategory;
import recipe.model.recipe;
import recipe.model.recipeDao;

@Controller
public class recipeInsertController implements ServletContextAware{
	private static final String command = "insertrecipe.recipe";
	private static final String getPage = "recipeinsertForm";
	private static final String gotoPage = "redirect:/recipeList.recipe";
	@Autowired
	@Qualifier("myRecipe")
	private recipeDao recipedao;
	
	
	@Autowired
	ServletContext servletContext;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String GetInsertForm(Model model){
		
		List<maincategory> category = recipedao.getmainCategory();
		model.addAttribute("category", category);
		
		return getPage;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView PostInsertForm(HttpServletRequest request,recipe recipe,MultipartFile upload,
			HttpServletResponse response) throws IOException{
		ModelAndView mav = new ModelAndView();
		String uploadPath = servletContext.getRealPath("/resources");
		System.out.println("uploadPath : "+uploadPath);
		System.out.println("============================================");
		System.out.println(recipe.toString());
		MultipartFile multi = recipe.getUpload();
		//multi���� name�� upload�� ���� ������ ����
		System.out.println("product.getUpload() : "+recipe.getUpload());
		//org.springframework.web.multipart.commons.CommonsMultipartFile@f1c
		System.out.println("product.getImage() : "+recipe.getRimage());
		System.out.println("===========================================");
		System.out.println("===============���� ���� �̹��� UUID ó���۾�==================");
		String filename = upload.getOriginalFilename();
		System.out.println("filename : "+filename);
		String filename_ext = filename.substring(filename.lastIndexOf(".")+1);
		filename_ext = filename_ext.toLowerCase();
		String[] allow_file = {"jpg","png","bmp","gif"};
		int cnt = 0; 
		String realFileNm = ""; 
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
	         System.out.println("recipe.getRimage() : "+recipe.getRimage());
         }
		System.out.println("=======================================================");
		int insert = 0;
		insert = recipedao.InsertReicpe(recipe);
		if(insert !=0){
			
			File destination = new File(uploadPath+File.separator+realFileNm);
			
			mav.setViewName(gotoPage);
			try{
				multi.transferTo(destination);
				
			}catch (IllegalStateException e) {
				// TODO: handle exception
				e.printStackTrace();
			}catch (IOException e) {
				// TODO: handle exception
				e.printStackTrace();
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
