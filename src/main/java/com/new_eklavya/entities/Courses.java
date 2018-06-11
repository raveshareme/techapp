package com.new_eklavya.entities;

import java.util.ArrayList;
import java.util.List;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;



@Document(collection="course")
public class Courses extends CourseDocument{
	
	private String title;
	private String price;
	private String description;
	private String permalink;
	private String requirement;
	private String Project;
	private String courseImage;
	
	
	
	
	public String getCourseImage() {
		return courseImage;
	}



	public void setCourseImage(String courseImage) {
		this.courseImage = courseImage;
	}


	@Field("sections")
	private List<Sections> sections = new ArrayList<Sections>();
	
	
	
	
	
	



	public List<Sections> getSections() {
		return sections;
	}



	public void setSections(Sections section) {
		this.sections.add(section);
	}




	public Courses() {
		
	}

	


	public Courses(String title, String price, String description, String permalink, String requirement,
			String project, String courseImage) {
		super();
		this.title = title;
		this.price = price;
		this.description = description;
		this.permalink = permalink;
		this.requirement = requirement;
		this.Project = project;
		this.courseImage=courseImage;
		
	}



	public String getRequirement() {
		return requirement;
	}


	public void setRequirement(String requirement) {
		this.requirement = requirement;
	}


	public String getProject() {
		return Project;
	}


	public void setProject(String project) {
		Project = project;
	}


	public void add(Sections section) {

		
		this.sections.add(section);
}
	
	public List<Sections> getSection() {
		return  sections;
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
	
	
	
	

}
