package org.zerock.service;


import java.util.List;

import org.zerock.domain.LogicVO;
import org.zerock.domain.MemberVO;



public interface MemberInfo {
		//�߰�
		public void regist(MemberVO joinyee)throws Exception;
		//�б�
		public MemberVO read(Integer mem_num)throws Exception;
		//����
		public void modify(MemberVO updateyee)throws Exception;
		//����
		public void remove(Integer mem_num)throws Exception;
		//����Ʈ
		public List<MemberVO> listAll()throws Exception;
		
		public MemberVO logremove(String id)throws Exception;
		
		//�α��� ���� ��������
		public MemberVO logreadPw(LogicVO lvo)throws Exception;
		
		//ȸ������ ���� �� ����
		public boolean checkPw(String id, String pass) throws Exception;
		
	
}