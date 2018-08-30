package org.zerock.service;

import java.util.List;

import javax.inject.Inject;
import javax.swing.Spring;

import org.springframework.stereotype.Service;
import org.zerock.domain.ScheduleVO;
import org.zerock.domain.Schedule_InfoVO;
import org.zerock.persistence.ScheduleDAO;

@Service
public class ScheduleServiceImpl implements ScheduleService {
	@Inject
	private ScheduleDAO dao;

	@Override
	public List<ScheduleVO> listAll() throws Exception {
		return dao.listAll();
	}

	public List<ScheduleVO> list() throws Exception {
		return dao.list();
	}

	@Override
	public List<ScheduleVO> listAll(String de_place, String ar_place, String de_date) throws Exception {

		return dao.listAll(de_place, ar_place, de_date);
	}

	@Override
	public void insert(Schedule_InfoVO vo) throws Exception {
		dao.insert(vo);

	}

}
