package notice.model;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myNoticeReplyDao")
public class Notice_replyDao {

	private String namespace = "notice.model.Notice_reply";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<Notice_reply> getNoticeReplyList(int num) {
		// TODO Auto-generated method stub
		List<Notice_reply> replyLists = new ArrayList<Notice_reply>();
		replyLists = sqlSessionTemplate.selectList(namespace+".getNoticeReplyList", num);
		return replyLists;
	}

	public int ReplyNotice(Notice_reply noticeReply) {
		// TODO Auto-generated method stub
		int cnt = -1;
		cnt = sqlSessionTemplate.insert(namespace+".replyNotice", noticeReply);
		return cnt;
	} 
	
}
