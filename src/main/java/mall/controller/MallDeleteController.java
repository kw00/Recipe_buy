package mall.controller;

import java.io.File;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;

import food.model.food;
import food.model.foodDao;

@Controller
public class MallDeleteController implements ServletContextAware{
	
	private static final String gotoPage = "redirect:/list.mall";
	private static final String command = "/delete.mall";
	
	private ServletContext servletContext;
	
	@Autowired
	@Qualifier("MyFoodDao")
	private foodDao foodDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doActionGet(
				@RequestParam(value="fnum",required=true) int fnum){
		int cnt = -1;
		System.out.println("fnum:"+fnum);
		
		food food = foodDao.Getfood(fnum);
		//System.out.println("product.getImage():"+product.getImage());
		
		String uploadDir=servletContext.getRealPath("/resources/"); 
		File delFile = new File( uploadDir + File.separator +food.getFimage() );
		cnt = foodDao.Deletefood( fnum );
		delFile.delete();
		
		return gotoPage;
	}

	@Override
	public void setServletContext(ServletContext context) {
		// TODO Auto-generated method stub
		servletContext=context;
	}

}
