package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;



public interface BoardDAO {
	
	//전체보기(이거 안씀)
	public List<BoardVO> listAll() throws Exception;
	
	//상세보기
	public BoardVO read(int board_num) throws Exception;
	
	//페이지 리스트(131 수를 정해놓았던거)(이거씀)
	public List<BoardVO> listPage(int page) throws Exception;
	
	public List<BoardVO> listCriteria(Criteria cri)throws Exception;
	
	//페이지 리슽 하단부분 싹다 불러오는거(이걸 씀)
	public int countPaging(Criteria cri) throws Exception;
	
	//조회수 카운팅
	public void updateViewCnt(int board_num) throws Exception;
	
	
	
}
