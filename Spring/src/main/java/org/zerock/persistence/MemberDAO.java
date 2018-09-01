package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.LogicVO;
import org.zerock.domain.MemberVO;




public interface MemberDAO {
		//ȸ�� ����
		public void create(MemberVO joinyee)throws Exception;
		
		//ȸ�� ���� �б�
		public MemberVO read(Integer mem_num)throws Exception;
		
		//����
		public void update(MemberVO updateyee)throws Exception;
		
		//����
		public void delete(Integer mem_num)throws Exception;
		
		//����Ʈ����
		public List<MemberVO> listAll()throws Exception;
		
		//�α��� ��������
		public MemberVO logremove(String id)throws Exception;
		
		//�α��� ���� ��������
		public MemberVO logreadPw(LogicVO lvo)throws Exception;
		
		//������ ���� �� ���� üũ
		public boolean cheakPw(String id, String pass) throws Exception;
		
		
	
}