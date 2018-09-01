package org.zerock.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.Criteria;
import org.zerock.domain.MemberVO;
import org.zerock.domain.PaymentVO;
import org.zerock.domain.SeatInfoVO;
import org.zerock.domain.SeatVO;
import org.zerock.service.SeatOptionService;

@Controller
/*@RequestMapping("/seat/*")*/
public class SeatOptionController {
	
	private static final Logger logger=LoggerFactory.getLogger(SeatOptionController.class);
	
	@Inject
	private SeatOptionService service; 
	
	//ajax
	@RequestMapping(value="/listSeat3",method=RequestMethod.GET)
	public String listAll(Model model, HttpSession sesstion) throws Exception{
		
		
		MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
		System.out.println(SeVO);
	
		model.addAttribute("list",service.listAll());
		
		return "seat/listSeat3";
	}
	
	@RequestMapping(value="/listSeat4",method=RequestMethod.GET)
	public String listAll2(Model model, HttpSession sesstion) throws Exception{
		logger.info("오는편 좌석");
		
		MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
		System.out.println(SeVO);
		
		return "seat/listSeat4";
	}
	
/*	@RequestMapping(value="/listAll",method=RequestMethod.GET)
	public void listAll(Model model) throws Exception{
	
		model.addAttribute("list",service.listAll());
	}	*/
	
	@RequestMapping(value="/seatCheck", method=RequestMethod.POST)
	public void seatcheck(@RequestParam("seat_num") String seat_num, Model model, HttpSession sesstion)throws Exception{
		model.addAttribute("listcheck",service.seatCheck(seat_num)); 
		
		MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
		System.out.println(SeVO);
	}
	
	//원래 결제controller
	@RequestMapping(value="/payment",method=RequestMethod.GET)
	public String paymentGET(PaymentVO payment,Model model, HttpSession sesstion) throws Exception{	
		logger.info("결제");
		
		MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
		System.out.println(SeVO);
		
		return "seat/payment";
	}
	
/*	@RequestMapping(value="/payment/{paynum}",method=RequestMethod.POST)
	public void paymentPOST(@RequestParam("pay_num") int pay_num, Model model) throws Exception{	
		logger.info("결제 pay_num 넘기기");
		model.addAttribute("paymentVO",service.paynumread(pay_num)); 
	}*/

	//원래 좌석 예약 마지막 page
		@RequestMapping(value="/lastSeat",method=RequestMethod.GET)
		public String lastSeatGET(PaymentVO payment,Model model, HttpSession sesstion) throws Exception{	
			logger.info("좌석예약마지막page");
			
			MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
			System.out.println(SeVO);
			
			return "seat/lastSeat";
		}
		
		@RequestMapping(value="/resInfo",method=RequestMethod.GET)
		public String resInfoGET(Model model, HttpSession sesstion) throws Exception{	
			logger.info("예약확인page");
			
			MemberVO SeVO = (MemberVO) sesstion.getAttribute("login");
			System.out.println(SeVO);
			
			return "seat/resInfo";
		}
}