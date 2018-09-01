package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;



public interface BoardInfo {
	
	//������ �ϴ� ����
	public List<BoardVO> listAll() throws Exception;
	
	//�󼼺���
	public BoardVO read(int board_num)throws Exception;
	
	//����¡ Criteria ���
	public List<BoardVO> listCriteria(Criteria cri) throws Exception; 
	
	//����¡ Criteria ���2 �ؿ� ����� ����¡ ����Ʈ ���θ� �ϴ� ������� 1���� 131 ���� �����س��� � �ۿ� �ȳ��Ծ���
	public int listCountCriteria(Criteria cri) throws Exception;
	
	//��ȸ�� ó��
	
	
}