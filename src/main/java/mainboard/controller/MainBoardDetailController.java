package mainboard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import mainboard.model.MainBoard;
import mainboard.model.MainBoardDao;

@Controller
public class MainBoardDetailController {
	private static final String getPage = "MainBoardDetailForm";
	private static final String command = "/detail.mainboard";
	
	@Autowired
	@Qualifier("myMainBoardDao")
	private MainBoardDao boardDao;
	
	@RequestMapping(value=command, method=RequestMethod.GET)
	public String doActionGet(@RequestParam("num") String num, Model model){
		
		int cnt = 0;
		MainBoard board = new MainBoard();
		
		cnt = boardDao.upViews(num);
		
		board = boardDao.getBoard(num);
		
		model.addAttribute("board", board);
		
		return getPage;
	}
	
}
