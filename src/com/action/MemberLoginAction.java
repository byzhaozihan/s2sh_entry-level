package com.action;

import com.entity.Member;
import com.opensymphony.xwork2.ActionSupport;
import com.service.MemberService;

public class MemberLoginAction extends ActionSupport {
	private Member member;
	private MemberService memberService;
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	//注入业务逻辑组件
	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	
	public String execute(){
		Member mb =memberService.findByName(member.getName(), member.getPassword());
		if(mb!=null)
			return SUCCESS;
		else
			return ERROR;
	}
}
