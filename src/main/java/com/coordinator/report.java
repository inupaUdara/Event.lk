package com.coordinator;

public class report {
	private int id;
	private String name;
	private String email;
	private String event;
	private String des;
	
	public report(int id, String name, String email, String event, String des) {
		
		this.id = id;
		this.name = name;
		this.email = email;
		this.event = event;
		this.des = des;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getevent() {
		return event;
	}

	public String getDes() {
		return des;
	}
	
		
	

}
