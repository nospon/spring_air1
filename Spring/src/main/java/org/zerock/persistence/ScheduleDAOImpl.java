package org.zerock.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.swing.Spring;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import org.zerock.domain.ScheduleVO;
import org.zerock.domain.Schedule_InfoVO;

@Repository
public class ScheduleDAOImpl implements ScheduleDAO{
	@Inject
	private SqlSession session;
	
	private static String namespace="org.zerock.mapper.ScheduleMapper";
	
	

	@Override
	public List<ScheduleVO> listAll() throws Exception {		
		return session.selectList(namespace+".listAll");
	}
	public List<ScheduleVO> list() throws Exception {		
		return session.selectList(namespace+".list");
	}
	public List<ScheduleVO> listAll(String de_place,String ar_place, String de_date) throws Exception {		
		Map<String,Object> paramMap=new HashMap<>();
		paramMap.put("de_place",de_place);
		paramMap.put("ar_place",ar_place);
		paramMap.put("de_date",de_date);
		
		return session.selectList(namespace+".listAll",paramMap);
	}
	@Override
	public void insert(Schedule_InfoVO vo) throws Exception {
		 session.insert(namespace+".insert",vo);
		
	}

		
	

}
