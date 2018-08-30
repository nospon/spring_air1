package org.zerock.persistence;

import java.util.List;

import javax.swing.Spring;

import org.zerock.domain.ScheduleVO;
import org.zerock.domain.Schedule_InfoVO;

public interface ScheduleDAO {

	public List<ScheduleVO> listAll()throws Exception;
	public List<ScheduleVO> list()throws Exception;
	public List<ScheduleVO> listAll(String de_place,String ar_place ,String de_date)throws Exception;
	public void insert(Schedule_InfoVO vo) throws Exception;

}
