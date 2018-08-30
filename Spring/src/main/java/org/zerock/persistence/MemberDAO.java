package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.LogicVO;
import org.zerock.domain.MemberVO;




public interface MemberDAO {
		//회원 가입
		public void create(MemberVO joinyee)throws Exception;
		
		//회원 정보 읽기
		public MemberVO read(Integer mem_num)throws Exception;
		
		//수정
		public void update(MemberVO updateyee)throws Exception;
		
		//삭제
		public void delete(Integer mem_num)throws Exception;
		
		//리스트보기
		public List<MemberVO> listAll()throws Exception;
		
		//로그인 정보삭제
		public MemberVO logremove(String id)throws Exception;
		
		//로그인 정보 가져오기
		public MemberVO logreadPw(LogicVO lvo)throws Exception;
		
		//수정및 삭제 를 위한 체크
		public boolean cheakPw(String id, String pass) throws Exception;
		
		
	
}
