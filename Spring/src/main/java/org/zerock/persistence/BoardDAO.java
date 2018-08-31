package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;



public interface BoardDAO {
	
	//��ü����(�̰� �Ⱦ�)
	public List<BoardVO> listAll() throws Exception;
	
	//�󼼺���
	public BoardVO read(int board_num) throws Exception;
	
	//������ ����Ʈ(131 ���� ���س��Ҵ���)(�̰ž�)
	public List<BoardVO> listPage(int page) throws Exception;
	
	public List<BoardVO> listCriteria(Criteria cri)throws Exception;
	
	//������ ���� �ϴܺκ� �ϴ� �ҷ����°�(�̰� ��)
	public int countPaging(Criteria cri) throws Exception;
	
	//��ȸ�� ī����
	public void updateViewCnt(int board_num) throws Exception;
	
	
	
}