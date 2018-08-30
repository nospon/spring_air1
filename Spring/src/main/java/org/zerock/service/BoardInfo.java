package org.zerock.service;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;



public interface BoardInfo {
	
	//페이지 싹다 보기
	public List<BoardVO> listAll() throws Exception;
	
	//상세보기
	public BoardVO read(int board_num)throws Exception;
	
	//페이징 Criteria 사용
	public List<BoardVO> listCriteria(Criteria cri) throws Exception; 
	
	//페이징 Criteria 사용2 밑에 계시판 페이징 리스트 전부를 싹다 가지고옴 1번껀 131 개로 고정해놔서 몇개 밖에 안나왔었음
	public int listCountCriteria(Criteria cri) throws Exception;
	
	//조회수 처리
	
	
}
