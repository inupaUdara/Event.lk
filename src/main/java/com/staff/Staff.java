package com.staff;

public class Staff {
	private int id;
	private String name;
	private String email;
	private String phone;
	private String userName;
	private String password;
	private String type;
	public Staff(int id, String name, String email, String phone, String userName, String password, String type) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.userName = userName;
		this.password = password;
		this.type=type;
	}
	
	public Staff(int id, String name) {
		
		this.id = id;
		this.name = name;
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
	
	public String getPhone() {
		return phone;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public String getPassword() {
		return password;
	}
	public String getType() {
		return type;
	}
	
	
	
	
	
	
	
}
