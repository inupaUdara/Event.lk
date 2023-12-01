package com.avaEvent;

public class Event {
	private String id;
	private String name;
	private String venue;
	private String date;
	private String imageData;
	public Event(String id, String name, String venue, String date,String imageData) {
		
		this.id = id;
		this.name = name;
		this.venue = venue;
		this.date = date;
		this.imageData=imageData;
	}
	public String getImageData() {
		return imageData;
	}
	
	public String getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getVenue() {
		return venue;
	}
	
	public String getDate() {
		return date;
	}
	
	
	
}
