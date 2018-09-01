package org.zerock.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;

@Repository
public class BoardDAOImpl implements BoardDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace="org.zerock.domain.mapper.BoardMapper";
	
	
	//전체보기(사용안함)
	@Override
	public List<BoardVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listAll");
	}
	//상세보기
	@Override
	public BoardVO read(int board_num) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".read",board_num);
	}
	
	//페이지 리스트
	@Override
	public List<BoardVO> listPage(int page) throws Exception {
		// TODO Auto-generated method stub
		if(page <= 0) {
			page = 1;
		}
		page =(page - 1)*10;
		
		return session.selectList(namespace+ ".listPage", page);
	}
	
	
	@Override
	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listCriteria", cri);
	}
	
	
	@Override
	public int countPaging(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".countPaging",cri);
	}
	
	//조회수 카운팅
	@Override
	public void updateViewCnt(int board_num) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".updateViewCnt", board_num);
	}



}