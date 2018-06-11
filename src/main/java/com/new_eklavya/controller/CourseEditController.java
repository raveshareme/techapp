package com.new_eklavya.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.new_eklavya.dto.CourseDto;
import com.new_eklavya.entities.Courses;
import com.new_eklavya.entities.Sections;
import com.new_eklavya.services.CourseService;
import com.new_eklavya.util.MyUtil;



@Controller
@RequestMapping("/admin/courses/")
public class CourseEditController {
	
	@Autowired
	private CourseService service;
	
	
	@GetMapping("/{permalink}")
	public String getCourseAdmin(@PathVariable("permalink") String permalink, Model model){
		
		
		Courses course=service.getCourseByLink(permalink);
		
		
		
		
		CourseDto cdto=new CourseDto();
		cdto.setTitle(course.getTitle());
		cdto.setDescription(course.getDescription());
		cdto.setPrice(course.getPrice());
		cdto.setRequirement(course.getRequirement());
		cdto.setProject(course.getProject());
		cdto.setId(course.getId());
		for(Sections section:course.getSection()){
			cdto.setSections(section);
			
			cdto.setName(section.getName());
			cdto.setSection_description(section.getDescription());
			cdto.setSection_permalink(section.getPermalink());
			
		}
		
		model.addAttribute("courseDto", cdto);
		
		
		
//		return "update-course";
		
		return "course_edit";
	}
	
	@GetMapping("/{permalink}/edit")
	public String getEditCourse(@PathVariable("permalink") String permalink, Model model){
		
		
		
		Courses course=service.getCourseByLink(permalink);
		CourseDto courseDto=new CourseDto();
		courseDto.setTitle(course.getTitle());
		courseDto.setDescription(course.getDescription());
		courseDto.setPrice(course.getPrice());
		courseDto.setRequirement(course.getRequirement());
		courseDto.setProject(course.getProject());
		model.addAttribute(courseDto);
		
		return "update-course";
	}
	
	@PostMapping("/{permalink}/edit")
	public String postEditCourse(@PathVariable("permalink") String permalink, @ModelAttribute("courseDto") @Valid CourseDto courseDto, BindingResult result, RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()){
			MyUtil.flash(redirectAttributes, "error", "formError");
			return "createcourse";
			
		}
		
		
		service.editCourse(courseDto, permalink);
		MyUtil.flash(redirectAttributes, "success", "courseSuccess");
		
		
		return "redirect:/admin/courses/";
	}
	
	@GetMapping("/{permalink}/edit/{section_link}")
	public String getEditCourseSection(@PathVariable( "permalink") String permalink, @PathVariable("section_link") String section_link,  Model model){
		
		CourseDto courseDto=new CourseDto();
		System.out.println("permalink is : "+permalink);
		Courses course=service.getCourseByLink(permalink);
		Sections section=service.getSection(course, section_link);
		
		courseDto.setName(section.getName());
		courseDto.setSection_description(section.getDescription());
		
		model.addAttribute(courseDto);
		
		
		return "section_edit";
	

	}

}
