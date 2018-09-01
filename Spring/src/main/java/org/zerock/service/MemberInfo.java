package org.zerock.service;


import java.util.List;

import org.zerock.domain.LogicVO;
import org.zerock.domain.MemberVO;



public interface MemberInfo {
		//추가
		public void regist(MemberVO joinyee)throws Exception;
		//읽기
		public MemberVO read(Integer mem_num)throws Exception;
		//수정
		public void modify(MemberVO updateyee)throws Exception;
		//삭제
		public void remove(Integer mem_num)throws Exception;
		//리스트
		public List<MemberVO> listAll()throws Exception;
		
		public MemberVO logremove(String id)throws Exception;
		
		//로그인 정보 가져오기
		public MemberVO logreadPw(LogicVO lvo)throws Exception;
		
		//회원정보 수정 및 삭제
		public boolean checkPw(String id, String pass) throws Exception;
		
	
}