package com.new_eklavya.services;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.new_eklavya.dto.CourseDto;
import com.new_eklavya.entities.Courses;
import com.new_eklavya.entities.Lectures;
import com.new_eklavya.entities.Sections;
import com.new_eklavya.repositories.CourseRepo;



@Service
public class CourseServiceImpl implements CourseService {
	
	@Autowired
	private CourseRepo repo;
	
	
	
	
	public String createPermalink(String title) {
		
		String permalink= title.toLowerCase();
		permalink=permalink.replaceAll("\\s", "-");
		
		
		return permalink;
	}



	

	@Override
	public List<Courses> getAll() {
		
			
			 List<Courses> courses = this.repo.findAll(new Sort(Sort.Direction.DESC, "Id"));

			 return courses;
		
	}

	@Override
	public Courses getCourseByLink(String permalink) {
		
		Courses course= repo.findCourseByPermalink(permalink);
		
		
		
		return course;
	}



	



	@Override
	public void addSections(CourseDto courseDto) {
		
		Courses course=repo.findCourseByPermalink(courseDto.getPermalink());
		

		
		String section_link=this.createPermalink(courseDto.getName());
		
		Sections section=new Sections();
		section.setName(courseDto.getName());
		section.setPermalink(section_link);
		section.setDescription(courseDto.getSection_description());
		
		
		course.setSections(section);
		System.out.println("section description is: "+courseDto.getSection_description());
		repo.save(course);
		
		
	}




	@Override
	public void addLectures(CourseDto courseDto) {
		
		
		
		
		Lectures lecture=new Lectures();
		lecture.setLecture_name(courseDto.getLecture_name());
		lecture.setLecture_link(courseDto.getLecture_link());
		
		Courses course=repo.findCourseBySections(courseDto.getPermalink(), courseDto.getSection_permalink());
		
		Iterator<Sections> sections=course.getSection().iterator();
		
		while(sections.hasNext()){
			
			
			Sections section=sections.next();
	
			if(section.getPermalink().equals(courseDto.getSection_permalink())){
				
				section.add(lecture);
			}
		}
			
			
		
		
			
				repo.save(course);
			
		
	}




	




	@Override
	public Courses getCourseSectionByLink(String permalink1, String permalink2) {
		Courses course=repo.findCourseBySections(permalink1, permalink2);

		
		
				return course;
	}




	@Override
	public void addCourse(CourseDto courseDto) {
		
		
		
		
		Courses course=new Courses(	);
		
		course.setTitle(courseDto.getTitle());
		course.setPrice(courseDto.getPrice());
		course.setCourseImage(courseDto.getFileUrl());
		
		course.setPermalink(this.createPermalink(courseDto.getTitle()));
		course.setDescription(courseDto.getDescription());
		course.setRequirement(courseDto.getRequirement());
		course.setProject(courseDto.getProject());
		
		repo.save(course);
	}




	@Override
	public Sections getSection(Courses course, String section_permalink) {
		
		Iterator<Sections> sectionList=course.getSection().iterator();
		
		String str=section_permalink;
		
		while(sectionList.hasNext()){
			
			
			Sections section=sectionList.next();
	
			if(section.getPermalink().equals(str)){
				
				return section;
			
				
			}
		}
		
		
		return null;
	}




	@Override
	public void editCourse(CourseDto courseDto, String permalink) {
		
		Courses course=repo.findCourseByPermalink(permalink);
		
		System.out.println("Edit course is called:"+permalink);
		
		course.setTitle(courseDto.getTitle());
		course.setPrice(courseDto.getPrice());
		course.setDescription(courseDto.getDescription());
		course.setRequirement(courseDto.getRequirement());
		course.setProject(courseDto.getProject());
		course.setPermalink(this.createPermalink(courseDto.getTitle()));
		
		repo.save(course);
		
		
	}





	@Override
	public int getNumCourses() {
		List<Courses>courseList =this.getAll();
		
		int count=courseList.size();

		
		
		return count;
		
	}





	





	




	


	
	
	

}
