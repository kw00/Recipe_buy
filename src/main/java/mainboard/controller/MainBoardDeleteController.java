package mainboard.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import mainboard.model.MainBoardDao;

@Controller
public class MainBoardDeleteController {
	private static final String getPage= "redirect:/board.mainboard";
	private static final String command= "/delete.mainboard";
	
	@Autowired
	@Qualifier("myMainBoardDao")
	private MainBoardDao boardDao;
	
	@RequestMapping(value=command)
	public String doActionGet(@RequestParam("num") String num, Model model){
		
		int cnt = 0;
		
		cnt = boardDao.DeleteBoard(num);
		
		return getPage;
	}
}
