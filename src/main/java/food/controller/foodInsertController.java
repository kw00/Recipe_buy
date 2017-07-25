package food.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletContext;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import food.model.food;
import food.model.foodDao;



@Controller
public class foodInsertController {
	private static final String getPage = "foodInsertForm";
	private static final String gotoPage = "redirect:/list.fd";
	private static final String command = "/insert.fd";

	@Autowired
	@Qualifier("MyFoodDao")
	foodDao dao;
	
	@Autowired
	ServletContext servletContext;

	@RequestMapping(value=command, method=RequestMethod.GET )
	public String doActionGet(){

		return getPage;
	}

	@RequestMapping(value=command, method=RequestMethod.POST )
	public ModelAndView doActionPost( @ModelAttribute("food") @Valid food bean, BindingResult result ){
		ModelAndView mav = new ModelAndView();
		if(result.hasErrors()){
			System.out.println("유효성 검사 오류입니다.");
			System.out.println(result.toString());
			mav.setViewName(getPage);
			return mav;
		}
		String uploadPath = servletContext.getRealPath("/resources/images");
		//uploadPath
		//C:\Spring_khmg\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\18_Spring_MyBatis_Products/resources/
		System.out.println("uploadPath : "+uploadPath);

		MultipartFile multi = bean.getUpload();

		int cnt = -1;
		cnt = dao.Insertfood(bean);
		if(cnt != -1){
			File destination = new File(uploadPath+File.separator+multi.getOriginalFilename());
			//File.separator : / slash

			try{
				multi.transferTo(destination);
				// 파일 객체를 만들것을 괄호안에 넣으면 해당 위치에 이미지가 저장됨
				//transferTo : 원하는 위치에 저장할 때 사용

			}catch( IllegalStateException e1){
				e1.printStackTrace();
			}catch(IOException e2){
				e2.printStackTrace();
			}
			mav.setViewName(gotoPage);
		}
		else{
			mav.setViewName(getPage);
		}
		return mav;
	}
}
