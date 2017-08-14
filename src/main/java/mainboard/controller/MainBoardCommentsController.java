package mainboard.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import mainboard.model.Comments;
import mainboard.model.CommentsDao;
import utility.Paging3;

@Controller
public class MainBoardCommentsController {
	

	@Inject
	private CommentsDao dao;
	

	@ResponseBody
	@RequestMapping(value="/colist.mainboard", method=RequestMethod.GET)
		public ResponseEntity list(@RequestParam("boardnum") int boardnum,
				@RequestParam("page") int page){
		ResponseEntity<Map<String,Object>> entity = null;
		Paging3 paging = new Paging3();
		paging.setPage(page);
		paging.setTotalCount(dao.totalCount(boardnum));
		try {
			Map<String,Object> map = new HashMap<String,Object>();
			map.put("paging", paging);
			map.put("boardnum", boardnum);
			map.put("list", dao.selectComments(map));
			entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
		} catch (Exception e) {
			entity = new ResponseEntity<Map<String,Object>>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	@ResponseBody
	@RequestMapping(value="/coinsert.mainboard", method=RequestMethod.POST)
	public String insert(Comments cvo){
		int insert = 0;
		insert = dao.insertComments(cvo);
		return "{\"insert\":"+insert+"}";
	}
	
	//Http 통신 규약 get post 만 있다.
	//RESTful WEB은 DELETE(삭제), PUT(전체 update), FETCH(일부만 update), POST(insert) , GET(select)
	//RESTful WEB url에 열할이 들어나는 것을 싫어한다. delete/{num}, 역할을 Method로 나타낸다.
	@ResponseBody
	@RequestMapping(value="/codelete.mainboard", method=RequestMethod.DELETE)
	public String delete(@RequestParam("boardnum") int num){
		int delete = 0;
		delete = dao.deleteComments(num);
		return "{\"del\":"+delete+"}";
	}
	
	
	@RequestMapping(value="/scriptpaging.mainboard", method=RequestMethod.GET)
	public String scriptpaging(Paging3 paging){
		
		return "./../paging/scriptpaging";
	}
	
	
}
