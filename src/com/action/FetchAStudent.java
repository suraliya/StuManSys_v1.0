package com.action;

import com.opensymphony.xwork2.ActionSupport;

public class FetchAStudent extends ActionSupport {

	private int stu_id;

	public String execute() {
		
		return "success";
	}
	
	public int getStu_id() {
		return stu_id;
	}

	public void setStu_id(int stu_id) {
		this.stu_id = stu_id;
	}
	
	
}
