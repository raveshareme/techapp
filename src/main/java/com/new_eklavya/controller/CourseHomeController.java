package com.new_eklavya.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.new_eklavya.domain.User;
import com.new_eklavya.repositories.CourseRepo;
import com.new_eklavya.services.UserService;



@Controller
public class CourseHomeController {
	
	@Autowired
	private CourseRepo courseRepo;
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/course")
	public String getCoursePage(Model model) {
		
		
		model.addAttribute("courseList", courseRepo.findAll(new Sort(Sort.Direction.DESC, "Id")));
		
		return "course";
	}
	
	@GetMapping("/course/{permalink}")
	public String getCourseMainPage(@PathVariable("permalink") String permalink, Model model) {
		
		model.addAttribute("coursePost", courseRepo.findCourseByPermalink(permalink));
		return "course_main";
	}
	@GetMapping("/course/{permalink}/enroll")
	public String getEnrolled(@PathVariable("permalink") String permalink, User user, Model model){
		
		model.addAttribute("enroll", user);
		return "enrollement-form";
	}
	@GetMapping("users/{userId}/course/{permalink}/pay")
	public String getPayment(@PathVariable("userId") String userId, @PathVariable("permalink") String permalink, Model model){
		User user=userService.fetchById(userId);
		
			model.addAttribute("name", user.getName());
		
		return "payment";
	}
	
	

}
