package com.action;

import com.entity.Member;
import com.opensymphony.xwork2.ActionSupport;
import com.service.MemberService;

public class MemberUpdateAction extends ActionSupport {
	private MemberService memberService;
	private Member member;
	private long id;
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String showMember(){
		Member mb = memberService.findById(getId());
		setMember(mb);
		return SUCCESS;
	}
	public String execute(){
		memberService.update(member);
		return SUCCESS;
	}
}
