package org.zerock.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.TicketVO;
@Repository
public class TicketDAOImpl implements TicketDAO {
	
	@Inject
	private SqlSession session;
	private static String namespace = "org.zerock.domain.mapper.TicketVO";
	
	@Override
	public TicketVO tkread(String engname) throws Exception {
		// TODO Auto-generated method stub
		return (TicketVO)session.selectOne(namespace+".ticketread", engname);
	}

	@Override
	public TicketVO read() throws Exception {
		// TODO Auto-generated method stub
		return (TicketVO)session.selectOne(namespace+".read");
	}

	
	

}
