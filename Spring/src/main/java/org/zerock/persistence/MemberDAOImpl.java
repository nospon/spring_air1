package org.zerock.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.LogicVO;
import org.zerock.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO{

	@Inject
	private SqlSession session;
	private static String namespace = "org.zerock.domain.mapper.MemberVO";
	
//	회원가입
	@Override
	public void create(MemberVO joinyee) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace+".create", joinyee);
	}

//	회원정보 읽기
	@Override
	public MemberVO read(Integer mem_num) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".read", mem_num);
	}

	
//	회원정보 수정
	@Override
	public void update(MemberVO updateyee) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".update", updateyee);
	}

//	회원 정보 삭제
	@Override
	public void delete(Integer mem_num) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace+".delete", mem_num);
	}

//	회원 정보 다 가져오기 (미구현)
	@Override
	public List<MemberVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listAll");
	}
	
	
	//로그 정보삭제
	@Override
	public MemberVO logremove(String id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".remove",id);
	}
	
	//로그인 비교 작업 했을떄
	@Override
	public MemberVO logreadPw(LogicVO lvo) throws Exception {
		// TODO Auto-generated method stub
//		HashMap<String,String> paramMap=new HashMap<>();
//		paramMap.put("id", id);
//		paramMap.put("pass", pass);
//		String koname = null;
//		paramMap.put("koname", koname);
		
		return session.selectOne(namespace+".select2",lvo);
	}
	
	
	//비밀번호가 맞다면 수정 및 삭제 체크 
	@Override
	public boolean cheakPw(String id, String pass) throws Exception {
		// TODO Auto-generated method stub
		boolean result = false;
		HashMap<String, String> map = new HashMap<>();
		map.put("id", id);
		System.out.println("dao:"+id);
		map.put("pass", pass);
		System.out.println("dao:"+pass);
		int count = session.selectOne(namespace+".checkPw",map);
		System.out.println("카운트값:"+count);
		if(count == 1) {
			result=true;
		}
		
		return result;
	}

	
	

}