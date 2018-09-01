package org.zerock.controller;


import javax.inject.Inject;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageMaker;
import org.zerock.service.BoardInfo;




@Controller
@RequestMapping("/board/*")
public class BoardController {
	@Inject
	BoardInfo boardInfo;

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	
	@RequestMapping(value = "/boardmain.do", method = RequestMethod.GET)
	public String boardlist(@ModelAttribute("cri") Criteria cri,Model model) throws Exception {
		logger.info("계시판 리스트");
		
//		//전체 리스트 보는거(이걸 쓰면 수가 많으면 겁나 버벅됨)
//		model.addAttribute("boardVO", boardInfo.listAll());
//		System.out.println(model);
		
		model.addAttribute("list", boardInfo.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		
		pageMaker.setTotalCount(boardInfo.listCountCriteria(cri));
		
		model.addAttribute("pageMaker", pageMaker);
		
		return "board/boardmain";
	}

	@RequestMapping(value="/read",method=RequestMethod.GET)
	public void readPage(@RequestParam("board_num") int board_num, Model model) throws Exception{
		System.out.println("게시판 상세보기");
		
		model.addAttribute("boardVO",boardInfo.read(board_num));
	}
}