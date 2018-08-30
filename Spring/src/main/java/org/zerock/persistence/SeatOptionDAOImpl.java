package org.zerock.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.PaymentVO;
import org.zerock.domain.SeatInfoVO;
import org.zerock.domain.SeatVO;

@Repository
public class SeatOptionDAOImpl implements SeatOptionDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="org.zerock.mapper.SeatOptionMapper";

	@Override
	public List<SeatVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listAll");
	}

	@Override
	public SeatVO seatCheck(String seat_num) throws Exception {
		
		return session.selectOne(namespace+".seatCheck",seat_num);
	}

	@Override
	public SeatVO payment(String seat_num) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".payment",seat_num);
	}

	@Override
	public SeatVO ticket(String seat_num) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".ticket",seat_num);
	}

	@Override
	public PaymentVO lastpage(int pay_num) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".lastpage",pay_num);
	}

}
