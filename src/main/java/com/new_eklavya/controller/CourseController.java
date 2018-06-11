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
@RequestMapping("/admin/courses")
public class CourseController {
	
	private CourseService service;
	
	@Autowired
	public CourseController(CourseService service) {
		super();
		this.service = service;
	}


	@GetMapping("/new")
	public String getCreateCourse(Model model) {
		
		model.addAttribute(new CourseDto());
		return "createcourse";
		
	}
	
	@GetMapping("/{permalink}/sections")
	public String getAddSections(@PathVariable("permalink") String permalink, Model model){
		
		

		
		model.addAttribute(service.getCourseByLink(permalink));
		System.out.println("CourseController is called, Method is editSection "+permalink);
		
		return "sections-admin";
	}
	
	
	@PostMapping("/{permalink}/sections")
	public String addSections(@ModelAttribute ("courseDto") @Valid CourseDto courseDto) {
		
		
		
		service.addSections(courseDto);
		return "redirect:/admin/courses/{permalink}/sections";
	}
	
	
	@GetMapping("/{permalink1}/sections/{permalink2}/lectures")
	public String getAddLecturens(@PathVariable("permalink1") String permalink1, @PathVariable("permalink2") String permalink2, Model model){
		
		

		
		model.addAttribute("courseDto", service.getCourseSectionByLink(permalink1, permalink2));
		
		
		
		return "lectures-admin";
	}
	
	@PostMapping("/{permalink1}/sections/{permalink2}/lectures")
	public String postaddLecturens(@PathVariable("permalink1") String permalink1, @PathVariable("permalink2") String permalink2, @ModelAttribute ("courseDto") @Valid CourseDto courseDto){
		
		
		
		
		Courses course=service.getCourseSectionByLink(permalink1, permalink2);
		
		courseDto.setTitle(course.getTitle());
		courseDto.setPrice(course.getPrice());
		courseDto.setDescription(course.getDescription());
		courseDto.setRequirement(course.getRequirement());
		courseDto.setProject(course.getProject());
		courseDto.setPermalink(permalink1);
		Sections section=service.getSection(course, permalink2);
		
		if(section!=null){
		courseDto.setName(section.getName());
		courseDto.setSection_description(section.getDescription());
		courseDto.setSection_permalink(section.getPermalink());
		}
		
		
		service.addLectures(courseDto);
		
		
		return "lectures-admin";
	}
	
	
	@PostMapping("/new")
	public String insertCourse(@ModelAttribute ("courseDto") @Valid CourseDto courseDto, BindingResult result, RedirectAttributes redirectAttributes) {

		if(result.hasErrors()){
			MyUtil.flash(redirectAttributes, "error", "formError");
			return "createcourse";
			
		}
		
		
		
		service.addCourse(courseDto);
		MyUtil.flash(redirectAttributes, "success", "courseSuccess");
		return "redirect:/admin/courses";
	}
	

}
