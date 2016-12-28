package com.service;

import java.util.List;

import com.dao.MemberDAO;
import com.entity.Member;

public class MemberServiceImpl implements MemberService {
	private MemberDAO memberDao;
	//设值注入DAO对象
	public void setMemberDao(MemberDAO memberDao) {
		this.memberDao = memberDao;
	}

	@Override
	public void add(Member member) {
		if(memberDao.findById(member.getId())==null)
			memberDao.add(member);

	}

	@Override
	public void update(Member member) {
		if(memberDao.findById(member.getId())!=null)
			memberDao.update(member);

	}

	@Override
	public void delete(long id) {
		if(memberDao.findById(id)!=null)
			memberDao.delete(id);

	}

	@Override
	public Member findByName(String name, String password) {
		return memberDao.findByName(name, password);
	}

	@Override
	public Member findById(long id) {
		return memberDao.findById(id);
	}

	@Override
	public List<Member> findAll() {
		return memberDao.findAll();
	}

}
