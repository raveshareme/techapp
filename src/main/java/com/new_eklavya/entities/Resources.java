package com.new_eklavya.entities;

import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

@Document(collection="resources")
public class Resources extends CourseDocument{
	
	@Field("name")
	private String resourceName;
	@Field("link")
	private String resourceLink;
	@Field("description")
	private String resourceDescription;
	public Resources(String resourceName, String resourceLink, String resourceDescription) {
		
		this.resourceName = resourceName;
		this.resourceLink = resourceLink;
		this.resourceDescription = resourceDescription;
	}
	
	public Resources() {
		
	}

	public String getResourceName() {
		return resourceName;
	}
	public void setResourceName(String resourceName) {
		this.resourceName = resourceName;
	}
	public String getResourceLink() {
		return resourceLink;
	}
	public void setResourceLink(String resourceLink) {
		this.resourceLink = resourceLink;
	}
	public String getResourceDescription() {
		return resourceDescription;
	}
	public void setResourceDescription(String resourceDescription) {
		this.resourceDescription = resourceDescription;
	}
	
	

}
