package org.zerock.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.persistence.BoardDAO;



@Service
public class BoardInfoImpl implements BoardInfo {
	
	@Inject
	BoardDAO dao;
	
	
	@Override
	public List<BoardVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}
	
	
	@Transactional(isolation=Isolation.READ_COMMITTED)
	@Override
	public BoardVO read(int board_num) throws Exception {
		// TODO Auto-generated method stub
		dao.updateViewCnt(board_num);
		return dao.read(board_num);
	}


	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listCriteria(cri);
	}

	
	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.countPaging(cri);
	}

	
	
	
}
