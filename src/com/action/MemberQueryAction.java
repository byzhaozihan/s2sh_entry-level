package com.action;

import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.entity.Member;
import com.opensymphony.xwork2.ActionSupport;
import com.service.MemberService;

public class MemberQueryAction extends ActionSupport {
	private MemberService memberService;

	public void setMemberService(MemberService memberService) {
		this.memberService = memberService;
	}
	public String execute(){
		List<Member> list = memberService.findAll();
		ServletActionContext.getRequest().setAttribute("memberList", list);
		return SUCCESS;
	}
}
