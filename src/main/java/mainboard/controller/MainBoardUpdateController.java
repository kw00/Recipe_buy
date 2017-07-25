package mainboard.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import mainboard.model.MainBoard;
import mainboard.model.MainBoardDao;

@Controller
public class MainBoardUpdateController {
	private static final String getPage = "MainBoardUpdateForm";
	private static final String gotoPage = "redirect:/board.mainboard";
	private static final String command = "/update.mainboard";
	
	@Autowired
	@Qualifier("myMainBoardDao")
	private MainBoardDao boardDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doActionGet(@RequestParam("num") String num, Model model, HttpSession session){
		
		
		if(session.getAttribute("loginfo")==null){
			session.setAttribute("destination", "redirect:/board.mainboard");
			
			model.addAttribute("message", "로그인을 하셔야 작성할 수 있습니다.");
			model.addAttribute("url", gotoPage);
			
			return "../result/result";
		}else{
			MainBoard board = new MainBoard();
			
			board = boardDao.getBoard(num);
			
			model.addAttribute("board",	board);
		}
		
		
		return getPage;
	}
	
	@RequestMapping(value=command, method=RequestMethod.POST)
	public ModelAndView doActionPost(MainBoard board){
		
		ModelAndView mav = new ModelAndView();
		
		int cnt = 0;
		
		cnt = boardDao.UpdateBoard(board);
		
		mav.setViewName(gotoPage);
		
		return mav;
	}
}
