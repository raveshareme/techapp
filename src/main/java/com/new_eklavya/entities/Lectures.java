package com.new_eklavya.entities;

public class Lectures {
	
	 private  String lecture_name, lecture_link;
	 
	 
	 
	 

	public Lectures(String lecture_name, String lecture_link) {
		super();
		this.lecture_name = lecture_name;
		this.lecture_link = lecture_link;
	}

	

	public Lectures() {
		super();
	}



	public String getLecture_name() {
		return lecture_name;
	}



	public void setLecture_name(String lecture_name) {
		this.lecture_name = lecture_name;
	}



	public String getLecture_link() {
		return lecture_link;
	}



	public void setLecture_link(String lecture_link) {
		this.lecture_link = lecture_link;
	}



	

	
	 
	 

}
