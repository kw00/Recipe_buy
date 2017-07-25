package mainboard.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component("myMainBoardDao")
public class MainBoardDao {
	
	private String namespace = "mainboard.model.MainBoard";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public int GetTotalCount(Map<String, String> map) {
		int cnt = 0;
		
		cnt = sqlSessionTemplate.selectOne(namespace+".GetTotalCount", map);
		
		return cnt;
	}

	public List<MainBoard> getBoardList(Paging pageInfo, Map<String, String> map) {
		List<MainBoard> lists = new ArrayList<MainBoard>();
		
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());
		
		lists = sqlSessionTemplate.selectList(namespace+".getBoardList", map, rowBounds);
		
		return lists;
	}

	public int InsertBoard(MainBoard board) {
		int cnt = 0;
		
		cnt = sqlSessionTemplate.insert(namespace+".InsertBoard", board);
		
		return cnt;
	}

	public MainBoard getBoard(String num) {
		MainBoard board = new MainBoard();
		
		board = sqlSessionTemplate.selectOne(namespace+".getBoard", num);
		
		return board;
	}

	public int upViews(String num) {
		int cnt = 0;
		
		cnt = sqlSessionTemplate.update(namespace+".upViews", num);
		
		return cnt;
	}

	public int UpdateBoard(MainBoard board) {
		int cnt = 0;
		
		cnt = sqlSessionTemplate.update(namespace+".UpdateBoard", board);
		
		return cnt;
	}

	public int DeleteBoard(String num) {
		int cnt = 0;
		
		cnt = sqlSessionTemplate.delete(namespace+".DeleteBoard", num);
		
		return cnt;
	}
}
