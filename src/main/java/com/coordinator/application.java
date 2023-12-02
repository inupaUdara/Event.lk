package com.coordinator;

public class application {
	private int id;
	private String fname;
	private String lname;
	private String email;
	private String phone;
	private String ename;
	private String eid;
	
	public application(int id, String fname, String lname, String email, String phone, String ename, String eid) {
		
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.phone = phone;
		this.ename = ename;
		this.eid = eid;
	}

	public int getId() {
		return id;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getEname() {
		return ename;
	}

	public String getEid() {
		return eid;
	}

}
