package com.new_eklavya.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.new_eklavya.services.BlogService;
import com.new_eklavya.services.CourseService;



@Controller
public class AdminController {
	
	
	
	@Autowired
	private CourseService service;
	
	@Autowired
	private BlogService blogService;
	
	@GetMapping("/admin/courses")
	public String allCourses(Model model) {
		
		model.addAttribute("courseList", service.getAll());
		
		return "course-admin";
		
	}
	
	
		
		
		
	
	@GetMapping("/admin")
	public String getAdmin(Model model) {
		
		model.addAttribute("numCourses", service.getNumCourses());
		
		return "admin_index";
	}

}
