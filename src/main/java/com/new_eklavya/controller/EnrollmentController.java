package com.new_eklavya.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/course")
public class EnrollmentController {
	
	
	
	
	
	@GetMapping("/mycourse/enrolled")
	public String getEnrolledCourse() {
		
		return "enrolled_course";
		
	}
	

}
