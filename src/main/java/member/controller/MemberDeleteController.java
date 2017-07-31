package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import member.model.MemberDao;

@Controller
public class MemberDeleteController {
	private static final String getPage = "redirect:/list.me";
	private static final String command = "/delete.me";
	
	@Autowired
	@Qualifier("myMemberDao")
	private MemberDao memberDao;
	
	@RequestMapping(value=command)
	public String doGetAction(@RequestParam("id") String id){
		int cnt = 0;
		
		cnt = memberDao.DeleteMember(id);
		
		return getPage;
	}
	
}
