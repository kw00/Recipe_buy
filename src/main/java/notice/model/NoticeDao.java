package notice.model;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import utility.Paging;

@Component("myNoticeDao")
public class NoticeDao {

	private String namespace = "notice.model.Notice";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate; 
	
	public int GetTotalCount(Map<String, String> map) {
		int cnt = 0;
		
		cnt = sqlSessionTemplate.selectOne(namespace+".GetTotalCount", map);
		
		return cnt;
	}

	public List<Notice> getNoticeList(Paging pageInfo, Map<String, String> map) {
		List<Notice> lists = new ArrayList<Notice>();
		
		RowBounds rowBounds = new RowBounds(pageInfo.getOffset(), pageInfo.getLimit());
		
		lists = sqlSessionTemplate.selectList(namespace+".getNoticeList", map, rowBounds);
		
		return lists;
	}

	public int InsertNotice(Notice notice) {
		int cnt = 0;
		
		cnt = sqlSessionTemplate.insert(namespace+".InsertNotice", notice);
		
		return cnt;
	}

	public Notice getNotice(int num) {
		Notice notice = new Notice();
		
		notice = sqlSessionTemplate.selectOne(namespace+".getNotice", num);
		
		return notice;
	}

	public int DeleteNotice(int num) {
		int cnt = 0;
		
		cnt = sqlSessionTemplate.delete(namespace+".DeleteNotice", num);
		
		return cnt;
	}

	public int UpdateNotice(Notice notice) {
		int cnt = 0;
		
		cnt = sqlSessionTemplate.delete(namespace+".UpdateNotice", notice);
		
		return cnt;
	}

	public int ReplyNotice(Notice notice) {
		int cnt = 0;
		
		cnt = sqlSessionTemplate.insert(namespace+".ReplyNotice", notice);
		
		return cnt;
	}

	public void UpReadCount(int num) {
		sqlSessionTemplate.update(namespace+".UpReadCount", num);
	}

}
