package org.zerock.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.binding.MapperMethod.ParamMap;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.Criteria;
import org.zerock.domain.PaymentVO;
import org.zerock.domain.ResInfoVO;
import org.zerock.domain.Schedule_InfoVO;
import org.zerock.domain.SeatInfoVO;
import org.zerock.domain.SeatVO;

@Repository
public class SeatDAOImpl implements SeatDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace="org.zerock.mapper.SeatMapper";
	
	@Override
	public List<SeatInfoVO> listSeat(String air_name) throws Exception {
		
		return session.selectList(namespace+".listSeat",air_name);
	}

	@Override
	public List<SeatInfoVO> listSC(String air_name, int sc_num) throws Exception {
		Map<String,Object> paramMap=new HashMap<>();
		
		paramMap.put("air_name", air_name);
		paramMap.put("sc_num", sc_num);
		
		return session.selectList(namespace + ".listSC",paramMap);
	}

	@Override
	public void update(SeatVO vo) throws Exception {
		
		session.update(namespace + ".update", vo);
		
	}
	
	@Override
	public void update(SeatInfoVO vo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".update", vo);
	}
	
	@Override
	public void update(String seat_num, String air_name) {
		// TODO Auto-generated method stub
		session.update(namespace +".update");
	}

	@Override
	public void create(PaymentVO payment) throws Exception {
		
		session.insert(namespace + ".create", payment);
	}
	
	@Override
	public List<SeatInfoVO> listSeatPage(String air_name, int sc_num,Criteria cri) throws Exception {
		
		Map<String, Object> paramMap=new HashMap<>();
		
		paramMap.put("air_name",air_name);
		paramMap.put("sc_num", sc_num);
		paramMap.put("cri",cri);
		
		return session.selectList(namespace+".listSeatPage",paramMap);
	}

	@Override
	public int count(String air_name) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".count",air_name);
	}

	@Override
	public List<ResInfoVO> ticPrice() throws Exception {
		
		return session.selectList(namespace+".ticPrice");
	}
	
	@Override
	public List<PaymentVO> resList() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".resList");
	}

	@Override
	public void resinfoin(ResInfoVO resInfo) throws Exception {
		
		session.insert(namespace+".resinfoin",resInfo);
	}
	
	@Override
	public void resinfoud(SeatInfoVO vo) throws Exception {
		
		session.update(namespace+".resinfoud",vo);
	}

	@Override
	public List<ResInfoVO> ticketinfoLi(String name, String res_rnum) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap=new HashMap<>();
		
		paramMap.put("name",name);
		paramMap.put("res_rnum", res_rnum);
		
		return session.selectList(namespace+".ticketinfoLi",paramMap);
	}

	@Override
	public void paymentRM(int pay_num) throws Exception {
		session.delete(namespace+".paymentRM",pay_num);
	}
	
	@Override
	public void resinfoRM(int resInfo_num) throws Exception {
		session.delete(namespace+".resinfoRM",resInfo_num);
	}

	@Override
	public void seatUpdate(ResInfoVO vo) throws Exception {
		session.update(namespace+".seatUpdate",vo);
	}

	@Override
	public List<Schedule_InfoVO> snumList() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".snumList");
	}
}
