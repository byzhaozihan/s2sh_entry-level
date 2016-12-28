package com.action;

import com.opensymphony.xwork2.ActionSupport;
import com.service.MemberService;

public class MemberDeleteAction extends ActionSupport {
	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	private long id;


	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}

	public String execute(){
		memberService.delete(getId());
		return SUCCESS;
	}
}
