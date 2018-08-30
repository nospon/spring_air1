package org.zerock.service;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.zerock.domain.LogicVO;
import org.zerock.domain.MemberVO;
import org.zerock.persistence.MemberDAO;



@Service
public class MemberInfoImpl implements MemberInfo{
	
	@Inject
	MemberDAO dao;

	@Override
	public void regist(MemberVO joinyee) throws Exception {
		// TODO Auto-generated method stub
		dao.create(joinyee);
	}

	@Override
	public MemberVO read(Integer mem_num) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(mem_num);
	}

	@Override
	public void modify(MemberVO updateyee) throws Exception {
		// TODO Auto-generated method stub
		dao.update(updateyee);
	}

	@Override
	public void remove(Integer mem_num) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(mem_num);
	}

	@Override
	public List<MemberVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}
	
	//회원삭제
	@Override
	public MemberVO logremove(String id) throws Exception {
		return dao.logremove(id);
		
	}
	
	
	//회원 정보 수정 및 삭제 
	@Override
	public boolean checkPw(String id, String pass) throws Exception {
		// TODO Auto-generated method stub		
		return dao.cheakPw(id, pass);
	}

	@Override
	public MemberVO logreadPw(LogicVO lvo) throws Exception {
		// TODO Auto-generated method stub
		return dao.logreadPw(lvo);
	}


}
