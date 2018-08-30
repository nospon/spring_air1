package org.zerock.controller;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;
import org.zerock.domain.SeatVO;
import org.zerock.persistence.SeatDAO;
import org.zerock.service.SeatService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class SeatDaoTest {
	
	@Inject
	private SeatDAO dao;
	
	@Inject 
	private SeatService service;
	
	private static Logger logger=LoggerFactory.getLogger(SeatDaoTest.class);
	
	/*@Test
	public void testListSeat() throws Exception{
		List<SeatVO> seatList=service.listSeat();
		System.out.println(seatList);
	}*/
	
	/*
	@Test //추가
	public void testCreate() throws Exception{
		BoardVO board=new BoardVO();
		board.setTitle("새로운 글을 넣습니다.");
		board.setContent("새로운 글을 넣습니다.");
		board.setWriter("user01");
		service.regist(board);
		System.out.println("insert 완료");
		//dao.create(board);
	}
	
	@Test //읽기
	public void testRead() throws Exception{
		//logger.info(dao.read(2).toString());
		BoardVO board=service.read(4);
		System.out.println(board);
	}*/
	
/*	@Test //수정
	public void testUpdate() throws Exception{
		BoardVO board=new BoardVO();
		board.setBno(11);
		board.setTitle("TITLE");
		board.setContent("CONTENT");
		service.modify(board);
		System.out.println("수정완료");
		//dao.update(board);
	}*/
	/*
	@Test //삭제
	public void testDelete() throws Exception{
		//dao.delete(2);
		service.remove(3);
		System.out.println("삭제됨");
	}*/
	
/*	@Test //페이지
	public void testListPage() throws Exception{
		int page=1;
		
		List<BoardVO> list=dao.listPage(page);
		
		for(BoardVO boardVO:list) {
			logger.info(boardVO.getBno()+":"+boardVO.getTitle());
		}
	}*/
	
	/*@Test
	public void testListCriteria() throws Exception{
		Criteria cri=new Criteria();
		
		cri.setPage(2);
		cri.setPerPageNum(20);
		
		List<BoardVO> list=dao.listCriteria(cri);
		
		for(BoardVO boardVO:list) {
			logger.info(boardVO.getBno()+":"+boardVO.getTitle());
		}
	}*/
	
	/*@Test
	public void testURI() throws Exception{
		
		UriComponents uriComponents=UriComponentsBuilder.newInstance().path("/board/read")
																	  .queryParam("bno", 12)
																	  .queryParam("perPageNum", 20)
																	  .build();
		logger.info("/board/read?bno=12&perPageNum=20");
		logger.info(uriComponents.toString());
	}*/
}
