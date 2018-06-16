package com.new_eklavya.dto;

public class ResourceDto {
	
	
	private String name;
	private String link;
	private String description;
	public ResourceDto(String name, String link, String description) {
		
		this.name = name;
		this.link = link;
		this.description = description;
	}
	public ResourceDto() {
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	
	

}
