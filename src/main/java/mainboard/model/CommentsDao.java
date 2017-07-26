package mainboard.model;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import mainboard.model.Comments;
import utility.Paging3;

@Repository //보통 @Repository는 dao db access object 를 명명한다. ->DI 컨테이너에서 BEAN으로 인식함.
public class CommentsDao {
	
	@Inject
	SqlSession sqlSession;
	private final static String namespace = "mainboard.model.Comments";
	
/*	public List<CommentsVo> selectComments(int board_num){
		return sqlSession.selectList(namespace+".selectComments", board_num);
	}*/
	
	public List<Comments> selectComments(Map map){
		return sqlSession.selectList(namespace+".selectComments", map);
	}
	
	public int totalCount(int board_num){
		return sqlSession.selectOne(namespace+".totalCount", board_num);
	}
	
	public int deleteComments(int num){
		return sqlSession.delete(namespace+".deleteComments", num);
	}
	
	public int updateComments(Comments cvo){
		return sqlSession.update(namespace+".updateComments", cvo);
	}
	
	public int insertComments(Comments cvo){
		return sqlSession.insert(namespace+".insertComments", cvo);
	}
	
	
	
}
