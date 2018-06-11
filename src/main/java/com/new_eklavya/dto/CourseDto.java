package com.new_eklavya.dto;

import java.util.ArrayList;
import java.util.List;

import com.new_eklavya.entities.Sections;



public class CourseDto {
	
	private String id;
	
	private String title;
	private String price;
	private String description;
	private String permalink;
	private String requirement;
	private String project;
	
	
	private String fileUrl;
	
	public CourseDto(String id, String title, String price, String description, String permalink, String requirement,
			String project, String fileUrl, List<Sections> sections, String name,
			String section_permalink, String section_description, String lecture_name, String lecture_link,
			List<String> section_names) {
		super();
		this.id = id;
		this.title = title;
		this.price = price;
		this.description = description;
		this.permalink = permalink;
		this.requirement = requirement;
		this.project = project;
		
		this.fileUrl = fileUrl;
		this.sections = sections;
		this.name = name;
		this.section_permalink = section_permalink;
		this.section_description = section_description;
		this.lecture_name = lecture_name;
		this.lecture_link = lecture_link;
		this.section_names = section_names;
	}



	


	public String getFileUrl() {
		return fileUrl;
	}



	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}



	private List<Sections> sections=new ArrayList<Sections>();
	
	
	private String name;
	private String section_permalink;
	private String section_description;
	private String lecture_name;
	private String lecture_link;
	
	private List<String> section_names;
	


	
	public List<Sections> getSections() {
		return sections;
	}



	public void setSections(Sections section) {
		this.sections.add(section);
	}


	public String getId() {
		return id;
	}











	public void setId(String string) {
		this.id = string;
	}











	public CourseDto() {
		super();
	}
	
	

	



	



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
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



	public String getRequirement() {
		return requirement;
	}

	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	



	



	public void setDescription(String description) {
		this.description = description;
	}

	public String getPermalink() {
		return permalink;
	}

	public void setPermalink(String permalink) {
		this.permalink = permalink;
	}



	public String getSection_description() {
		return section_description;
	}



	public void setSection_description(String section_description) {
		this.section_description = section_description;
	}



	public String getSection_permalink() {
		return section_permalink;
	}



	public void setSection_permalink(String section_permalink) {
		this.section_permalink = section_permalink;
	}



	

	
	
}
