package org.zerock.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.swing.Spring;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.MemberVO;
import org.zerock.domain.ScheduleVO;
import org.zerock.domain.Schedule_InfoVO;
import org.zerock.persistence.ScheduleDAO;
import org.zerock.service.ScheduleService;

@Controller
@RequestMapping("/schedule/*") 
class ScheduleController {
	private static final Logger logger = LoggerFactory.getLogger(ScheduleController.class);

	@Inject
	private ScheduleService service;

	@RequestMapping(value = "/listAll", method = RequestMethod.GET)
	public String listAll(HttpSession sesstion,Model model) throws Exception {
		logger.info("전체리스트 보기");
		MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
		System.out.println(SeVO);

		model.addAttribute("listAll", service.listAll());
		return "/schedule/listAll";
	}

@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(HttpSession sesstion,Model model) throws Exception {
		logger.info("리스트 보기");
		MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
		System.out.println(SeVO);

		model.addAttribute("list", service.list());
		return "/schedule/list";
	}

@RequestMapping(value = "/schedule", method = RequestMethod.GET)
public String schedule(HttpSession sesstion,Model model) throws Exception {
	logger.info("운항일정보기");
	MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
	System.out.println(SeVO);


	model.addAttribute("list", service.list());
	return "/schedule/schedule";
}
	/*@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String save(Model model) throws Exception {
	
		return "/schedule/save";
	}*/
	 @RequestMapping(value="/save",method=RequestMethod.GET)
	    public void createGET(HttpSession sesstion,Schedule_InfoVO vo, Model model) throws Exception{
	        System.out.println(" GET방식");
	        
	    }
	 @RequestMapping(value="/save",method=RequestMethod.POST)
		public String createPOST(HttpSession sesstion,Schedule_InfoVO vo,RedirectAttributes rttr) throws Exception{
		 MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
			System.out.println(SeVO);
	
		 System.out.println(" POST방식");
			System.out.println(vo.toString());
			System.out.println(vo.getSc_num1());
			System.out.println(vo.getAir_name1());
			service.insert(vo);
			rttr.addFlashAttribute("msg","success");
					
			return "redirect:/seat/listSeat3";
		}

	@RequestMapping(value = "/listAll/{de_place}/{ar_place}/{de_date}", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> listAll(@PathVariable("de_place") String de_place,
			@PathVariable("ar_place") String ar_place ,@PathVariable("de_date") String de_date,HttpSession sesstion) {
		MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
		System.out.println(SeVO);

		
		ResponseEntity<Map<String, Object>> entity = null;
		try {

			Map<String, Object> map = new HashMap<String, Object>();
			List<ScheduleVO> list = service.listAll(de_place, ar_place,de_date);
			map.put("list", list);
			System.out.println(map+"bb");
			System.out.println(list+"aa");
			entity = new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
}