package member.model;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("myMemberDao")
public class MemberDao {
	private String namespace = "member.model.Member";
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public MemberDao(){}

	//회원가입
	public int InsertMember(Member member) {
		int cnt = 0;
		
		System.out.println("======== Dao start========");
		System.out.println(member);
		System.out.println("======== Dao end========");
		
		cnt = sqlSessionTemplate.insert(namespace+".InsertMember", member);
		
		return cnt;
	}

	//회원가입 아이디 중복 체크
	public boolean selectId(String id) {
		boolean idFlag = false;
		//Member mem = sqlSession.selectOne(MemberMapper+".selectId", id);
		//Member mem2;//undefined 상태 빈 상태 -> 어떤 것도 호출 하지 못한다.
		//mem2.getId(); //오류 
		//sqlSession.selectOne() 받아오는 값이 없으면 parameter를 null이 아니라 undefined로 준다.
		//if(mem.getId()!=null){
		if(sqlSessionTemplate.selectOne(namespace+".selectId", id)!=null){
			idFlag = true;
		}
		
		System.out.println("=======================");
		System.out.println("id : " +id);
		System.out.println("idFlag : " +idFlag);
		System.out.println("=======================");
		
		return idFlag;
	}

	//로그인 확인
	public Member GetMember(String id) {
		Member member = null;
		member = sqlSessionTemplate.selectOne(namespace+".GetMember", id);
		return member;
	}
	
	public Member GetId(String name) {
		// TODO Auto-generated method stub
		Member bean = null;
		bean = sqlSessionTemplate.selectOne(namespace + ".GetId",	name);
		return bean;
	}

	public Member GetPw(String id) {
		// TODO Auto-generated method stub
		Member bean = null;
		bean = sqlSessionTemplate.selectOne(namespace + ".GetPw",	id);
		return bean;
	}

}
