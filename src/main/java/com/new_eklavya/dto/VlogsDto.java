package com.new_eklavya.dto;

import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

public class VlogsDto {
	
	@NotNull
	@NotEmpty
	private String title;
	@NotNull
	@NotEmpty
	private String link;
	@NotNull
	@NotEmpty
	private String description;
	
	
	public VlogsDto() {
		super();
	}


	public VlogsDto(String title, String link, String description) {
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
	
	
	
	

}
