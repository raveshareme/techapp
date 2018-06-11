package com.new_eklavya.entities;

import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="vlogs")
public class Vlogs {
	
	private String id;
	
	private String title;
	private String link;
	private String description;
	
	public Vlogs() {
		
	}

	public Vlogs(String title, String link, String description) {
		super();
		this.title = title;
		this.link = link;
		this.description = description;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getId() {
		return id;
	}

	
	
	
	

}
