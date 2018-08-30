package org.zerock.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageMaker;
import org.zerock.domain.PaymentVO;
import org.zerock.domain.ResInfoVO;
import org.zerock.domain.Schedule_InfoVO;
import org.zerock.domain.SeatInfoVO;
import org.zerock.domain.SeatVO;
import org.zerock.service.SeatService;

@RestController
@RequestMapping("/seats")
public class SeatController {
	
	private static final Logger logger=LoggerFactory.getLogger(SeatController.class);
	
	@Inject
	private SeatService service;
	
	//List
	@RequestMapping(value="/all/{air_name}", method=RequestMethod.GET)
	public ResponseEntity<List<SeatInfoVO>> list(
			@PathVariable("air_name") String air_name){
				ResponseEntity<List<SeatInfoVO>> entity=null;
			try {
				entity = new ResponseEntity<>(
						service.listSeat(air_name),HttpStatus.OK);
			}catch(Exception e) {
				e.printStackTrace();
				entity=new ResponseEntity<>(
					HttpStatus.BAD_REQUEST);
			}
			return entity;
		}
	
	@RequestMapping(value="/all/{air_name}/{sc_num}", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> listSC(
			@PathVariable("air_name") String air_name, @PathVariable("sc_num") int sc_num ){
				ResponseEntity<Map<String, Object>> entity=null;
			try {
				Map<String, Object> map=new HashMap<String, Object>();
				List<SeatInfoVO> list=service.listSC(air_name,sc_num);
				
				map.put("list", list);
				
				entity=new ResponseEntity<Map<String, Object>>(map,HttpStatus.OK);
				}catch(Exception e) {
					e.printStackTrace();
					entity=new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
				}
			return entity;
			}
	
	//티켓 값 넘기는 controller
	@RequestMapping(value="/tic", method=RequestMethod.GET)
	public ResponseEntity<List<ResInfoVO>> ticPrice(){
				ResponseEntity<List<ResInfoVO>> entity=null;
			try {
				entity = new ResponseEntity<>(
						service.ticPrice(),HttpStatus.OK);
			}catch(Exception e) {
				e.printStackTrace();
				entity=new ResponseEntity<>(
					HttpStatus.BAD_REQUEST);
			}
			return entity;
		}
	
	//수정
	//seat_num & sc_num... /{seat_num}/{sc_num}
	@RequestMapping(value="/{air_name}/{sc_num}/{seat_num}",method= {RequestMethod.PUT, RequestMethod.PATCH})
	public ResponseEntity<String> update(
			@PathVariable("air_name") String air_name, 
			@PathVariable("sc_num") int sc_num,
			@PathVariable("seat_num") String seat_num,
			@RequestBody SeatInfoVO vo) {
		
		ResponseEntity<String> entity=null;
		
		try {
					
			vo.setAir_name(air_name);
			vo.setSc_num(sc_num);
			vo.setSeat_num(seat_num);	
			
			service.update(vo);

			entity=new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
	
		}catch(Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<String>(
					 HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	//결제insert
		@RequestMapping(value="",method=RequestMethod.POST)
		public ResponseEntity<String> register(
				@RequestBody PaymentVO payment) {
			ResponseEntity<String> entity=null;
			try {
				service.payregist(payment);
				entity=new ResponseEntity<String>(
						"SUCCESS",HttpStatus.OK);
			}catch(Exception e) {
				e.printStackTrace();
				entity=new ResponseEntity<String>(
						e.getMessage(),HttpStatus.BAD_REQUEST);
			}
			return entity;
		}
		
		//페이징처리
		@RequestMapping(value="/{air_name}/{sc_num}/{page}", method=RequestMethod.GET)
		public ResponseEntity<Map<String, Object>> listPage(
				@PathVariable("air_name") String air_name,
				@PathVariable("sc_num") int sc_num,
				@PathVariable("page") int page){
			ResponseEntity<Map<String,Object>> entity=null;
			
			try {
				Criteria cri=new Criteria();
				cri.setPage(page);
				
				PageMaker pageMaker=new PageMaker();
				pageMaker.setCri(cri);
				
				Map<String, Object> map=new HashMap<String, Object>();
				List<SeatInfoVO> list=service.listSeatPage(air_name,sc_num,cri);
				
				map.put("list", list);
				
				int seatCount=service.count(air_name);
				pageMaker.setTotalCount(seatCount);
				
				map.put("pageMaker", pageMaker);
				
				entity=new ResponseEntity<Map<String, Object>>(map,HttpStatus.OK);
				} catch(Exception e) {
				e.printStackTrace();
				entity=new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
				}
			return entity;
		}
		
		//결제완료
	/*	@RequestMapping(value="/res/{pay_num}", method=RequestMethod.GET)
		public ResponseEntity<List<PaymentVO>> resList(
				@PathVariable("pay_num") int pay_num){
					ResponseEntity<List<PaymentVO>> entity=null;
					try {
						entity = new ResponseEntity<>(
								service.resList(pay_num),HttpStatus.OK);
					}catch(Exception e) {
						e.printStackTrace();
						entity=new ResponseEntity<>(
							HttpStatus.BAD_REQUEST);
					}
					return entity;
				}*/
		
		@RequestMapping(value="/res", method=RequestMethod.GET)
		public ResponseEntity<List<PaymentVO>> resList(){
					ResponseEntity<List<PaymentVO>> entity=null;
					try {
						entity = new ResponseEntity<>(
								service.resList(),HttpStatus.OK);
					}catch(Exception e) {
						e.printStackTrace();
						entity=new ResponseEntity<>(
							HttpStatus.BAD_REQUEST);
					}
					return entity;
				}
		
		//resInfo table에 값 저장
		@RequestMapping(value="/resinfo/{air_name}/{sc_num}/{seat_num}",method=RequestMethod.POST)
		public ResponseEntity<List<String>> resinfoin(
				@RequestBody ResInfoVO resInfo) {
			ResponseEntity<List<String>> entity=null;
			try {
				service.resinfoin(resInfo);
				entity=new ResponseEntity<List<String>>(
						HttpStatus.OK);
			}catch(Exception e) {
				e.printStackTrace();
				entity=new ResponseEntity<List<String>>(
						HttpStatus.BAD_REQUEST);
			}
			return entity;
		}
		
		@RequestMapping(value="/resinfo1/{air_name}/{sc_num}/{seat_num}",method= {RequestMethod.PUT, RequestMethod.PATCH})
		public ResponseEntity<String> resinfoud(
				@PathVariable("air_name") String air_name, 
				@PathVariable("sc_num") int sc_num,
				@PathVariable("seat_num") String seat_num,
				@RequestBody SeatInfoVO vo) {
			
			ResponseEntity<String> entity=null;
			
			try {
						
				vo.setAir_name(air_name);
				vo.setSc_num(sc_num);
				vo.setSeat_num(seat_num);	
				
				service.resinfoud(vo);

				entity=new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		
			}catch(Exception e) {
				e.printStackTrace();
				entity=new ResponseEntity<String>(
						 HttpStatus.BAD_REQUEST);
			}
			return entity;
		}
		
	
	 //예매 확인(티켓 조회)List
	@RequestMapping(value="/ticketinfo/{name}/{res_rnum}", method=RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> ticketinfoLi(
			@PathVariable("name") String name,
			@PathVariable("res_rnum") String res_rnum){
		ResponseEntity<Map<String, Object>> entity=null;
		try {
			Map<String, Object> map=new HashMap<String, Object>();
			List<ResInfoVO> list=service.ticketinfoLi(name,res_rnum);
			
			map.put("list", list);
			
			entity=new ResponseEntity<Map<String, Object>>(map,HttpStatus.OK);
			}catch(Exception e) {
				e.printStackTrace();
				entity=new ResponseEntity<Map<String, Object>>(HttpStatus.BAD_REQUEST);
			}
		return entity;
	}	
	
	//예매 취소
	//payment삭제(ok), resInfo 삭제(ok) 
	@RequestMapping(value="/paymentRM/{pay_num}",method=RequestMethod.DELETE)
	public ResponseEntity<String> paymentRM(
			@PathVariable("pay_num") int pay_num) {
		
		ResponseEntity<String>  entity=null;
		try {			
			service.paymentRM(pay_num);
			entity=new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<>(
					 e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	@RequestMapping(value="/resinfoRM/{resInfo_num}",method=RequestMethod.DELETE)
	public ResponseEntity<String> resinfoRM(
			@PathVariable("resInfo_num") int resInfo_num) {
		
		ResponseEntity<String>  entity=null;
		try {			
			service.resinfoRM(resInfo_num);
			entity=new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		}catch(Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<>(
					 e.getMessage(),HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	//seat_YN=1 update, seat_total+=1 update
	@RequestMapping(value="/seatud/{air_name1}/{seat_num1}/{air_name2}/{seat_num2}",method= {RequestMethod.PUT, RequestMethod.PATCH})
	public ResponseEntity<String> seatUpdate(
			@PathVariable("air_name1") String air_name1, 
			@PathVariable("seat_num1") String seat_num1, 
			@PathVariable("air_name2") String air_name2, 
			@PathVariable("seat_num2") String seat_num2, 
			@RequestBody ResInfoVO vo) {
		
		ResponseEntity<String> entity=null;
		
		try {
				
			vo.setSeat_num(seat_num1);	
			vo.setAir_name(air_name1);
			vo.setSeat_num(seat_num2);	
			vo.setAir_name(air_name2);
			
			service.seatUpdate(vo);

			entity=new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
	
		}catch(Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<String>(
					 HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	//air_name, sc_num 가져오기
	@RequestMapping(value="/snum", method=RequestMethod.GET)
	public ResponseEntity<List<Schedule_InfoVO>> snumList(){
				ResponseEntity<List<Schedule_InfoVO>> entity=null;
				try {
					entity = new ResponseEntity<>(
							service.snumList(),HttpStatus.OK);
				}catch(Exception e) {
					e.printStackTrace();
					entity=new ResponseEntity<>(
						HttpStatus.BAD_REQUEST);
				}
				return entity;
			}
}
	
	