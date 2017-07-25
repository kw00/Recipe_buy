package mainboard.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import mainboard.model.MainBoard;
import mainboard.model.MainBoardDao;

@Controller
public class MainBoardInsertController{
	private static final String getPage = "MainBoardInsertForm";
	private static final String gotoPage = "board.mainboard";
	private static final String command = "/insert.mainboard";
	
	@Autowired
	@Qualifier("myMainBoardDao")
	private MainBoardDao boardDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doActionGet(HttpSession session, Model model) throws IOException{
		System.out.println(this.getClass() + "Board Insert Get방식 들어옴");
		
		if(session.getAttribute("loginfo")==null){
			session.setAttribute("destination", "redirect:/board.mainboard");
			
			model.addAttribute("message", "로그인을 하셔야 작성할 수 있습니다.");
			model.addAttribute("url", gotoPage);
			
			return "../result/result";
		}else{
			return getPage;
		}
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView doActionPost(MainBoard board) throws IOException{
		System.out.println(this.getClass() + "Board Insert Post방식 들어옴");
		
		ModelAndView mav = new ModelAndView();
		
		int cnt = 0;
		
		cnt = boardDao.InsertBoard(board);
		
		mav.setViewName("redirect:/board.mainboard");
		
		return mav;
	}
}
