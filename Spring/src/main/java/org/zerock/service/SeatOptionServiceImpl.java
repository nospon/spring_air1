package org.zerock.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zerock.domain.PaymentVO;
import org.zerock.domain.SeatInfoVO;
import org.zerock.domain.SeatVO;
import org.zerock.persistence.SeatOptionDAO;

@Service
public class SeatOptionServiceImpl implements SeatOptionService{

	@Inject
	private SeatOptionDAO dao;

	@Override
	public List<SeatVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

	@Override
	public SeatVO seatCheck(String seat_num) throws Exception {
		// TODO Auto-generated method stub
		return dao.seatCheck(seat_num);
	}

	@Override
	public SeatVO payment(String seat_num) throws Exception {
		// TODO Auto-generated method stub
		return dao.payment(seat_num);
	}

	@Override
	public SeatVO ticket(String seat_num) throws Exception {
		// TODO Auto-generated method stub
		return dao.ticket(seat_num);
	}

	@Override
	public PaymentVO lastpage(int pay_num) throws Exception {
		// TODO Auto-generated method stub
		return dao.lastpage(pay_num);
	}

}
