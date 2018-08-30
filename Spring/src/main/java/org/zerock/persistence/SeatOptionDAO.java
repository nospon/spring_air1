package org.zerock.persistence;

import java.util.List;

import org.zerock.domain.PaymentVO;
import org.zerock.domain.SeatInfoVO;
import org.zerock.domain.SeatVO;

public interface SeatOptionDAO {	
	
	public List<SeatVO> listAll() throws Exception;	
	
	public SeatVO seatCheck(String seat_num) throws Exception;

	public SeatVO payment(String seat_num) throws Exception;

	public SeatVO ticket(String seat_num) throws Exception;

	public PaymentVO lastpage(int pay_num) throws Exception;
} 
