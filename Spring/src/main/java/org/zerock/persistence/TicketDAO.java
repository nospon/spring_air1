package org.zerock.persistence;

import org.zerock.domain.TicketVO;

public interface TicketDAO {
	
	public TicketVO tkread (String engname) throws Exception;

	public TicketVO read()throws Exception;
	
	
}
