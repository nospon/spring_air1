package org.zerock.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zerock.domain.TicketVO;
import org.zerock.persistence.TicketDAO;


@Service
public class TicketInfoImpl implements TicketInfo{
	
	@Inject
	TicketDAO dao;
	
	@Override
	public TicketVO tkread(String engname) throws Exception {
		// TODO Auto-generated method stub
		return dao.tkread(engname);
	}
	
}
