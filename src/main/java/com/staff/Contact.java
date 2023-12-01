package com.staff;

public class Contact {
	private int contactId;
	private String name;
	private String email;
	private String message;
	
	
	
	public Contact(int contactId, String name, String email, String message) {
		this.contactId = contactId;
		this.name = name;
		this.email = email;
		this.message = message;
	}

	public int getContactId() {
		return contactId;
	}
	
	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getMessage() {
		return message;
	}
	
	
	
	
}
