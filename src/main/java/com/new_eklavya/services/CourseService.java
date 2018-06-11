package com.new_eklavya.services;

import java.util.List;

import com.new_eklavya.dto.CourseDto;
import com.new_eklavya.entities.Courses;
import com.new_eklavya.entities.Sections;



public interface CourseService {
	
	

	
	
	
	public List<Courses> getAll();

	public abstract Courses getCourseByLink(String permalink);
	public abstract void addCourse(CourseDto courseDto);
	

	public abstract void addSections(CourseDto courseDto);

	public abstract void addLectures(CourseDto courseDto);

	public abstract Courses getCourseSectionByLink(String permalink1, String permalink2);

	public abstract Sections getSection(Courses course, String permalink2);




	public abstract void editCourse(CourseDto courseDto, String permalink);

	public int getNumCourses();

	

}
