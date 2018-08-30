package org.zerock.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zerock.domain.Criteria;
import org.zerock.domain.PaymentVO;
import org.zerock.domain.ResInfoVO;
import org.zerock.domain.Schedule_InfoVO;
import org.zerock.domain.SeatInfoVO;
import org.zerock.domain.SeatVO;
import org.zerock.persistence.SeatDAO;

@Service
public class SeatServiceImpl implements SeatService{

	@Inject
	private SeatDAO dao;

	@Override
	public List<SeatInfoVO> listSeat(String air_name) throws Exception {
		
		return dao.listSeat(air_name);
	}

	@Override
	public List<SeatInfoVO> listSC(String air_name, int sc_num) throws Exception {
		
		return dao.listSC(air_name, sc_num);
	}

	@Override
	public void modifySeat(SeatVO vo) throws Exception {
		
		dao.update(vo);
	}

	/*@Override
	public void update(String seat_num, String air_name) throws Exception {
		// TODO Auto-generated method stub
		dao.update(seat_num, air_name);
	}
*/
	@Override
	public void payregist(PaymentVO payment) throws Exception {
		
		dao.create(payment);
		
	}
	
	@Override
	public void update(SeatInfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.update(vo);
	}

	@Override
	public List<SeatInfoVO> listSeatPage(String air_name, int sc_num,Criteria cri) throws Exception {
		return dao.listSeatPage(air_name, sc_num,cri);
	}

	@Override
	public int count(String air_name) throws Exception {
		// TODO Auto-generated method stub
		return dao.count(air_name);
	}

	@Override
	public List<ResInfoVO> ticPrice() throws Exception {
		
		return dao.ticPrice();
	}

	@Override
	public List<PaymentVO> resList() throws Exception {
		// TODO Auto-generated method stub
		return dao.resList();
	}


	@Override
	public void resinfoin(ResInfoVO resInfo) throws Exception {
		// TODO Auto-generated method stub
		dao.resinfoin(resInfo);
	}
	
	@Override
	public void resinfoud(SeatInfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.resinfoud(vo);
	}
	
	@Override
	public List<ResInfoVO> ticketinfoLi(String name, String res_rnum) throws Exception {
		
		return dao.ticketinfoLi(name, res_rnum);
	}

	@Override
	public void paymentRM(int pay_num) throws Exception {
		dao.paymentRM(pay_num);
	}

	@Override
	public void resinfoRM(int resInfo_num) throws Exception {
		
		dao.resinfoRM(resInfo_num);
	}

	@Override
	public void seatUpdate(ResInfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		dao.seatUpdate(vo);
	}

	@Override
	public List<Schedule_InfoVO> snumList() throws Exception {
		// TODO Auto-generated method stub
		return dao.snumList();
	}


}
