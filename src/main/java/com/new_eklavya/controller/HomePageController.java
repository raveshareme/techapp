package com.new_eklavya.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Validator;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



@Controller
@RequestMapping("/")
public class HomePageController {
	
	
	@GetMapping("/faq")
	public String getFaqPage() {
		
		return "faq";
		
	}
	
	@GetMapping("/legal")
	public String getLegalPage() {
		
		return "legal";
		
	}
	
	@GetMapping("/contact")
	public String getContactPage() {
		
		return "contact";
		
	}
	
	@GetMapping("/knowledge-base")
	public String getKnowledgeBasePage() {
		
		return "resources";
		
	}
	
	@GetMapping("/user")
	public String getMyCourse(){
		
		return "my_course";
	}
}
