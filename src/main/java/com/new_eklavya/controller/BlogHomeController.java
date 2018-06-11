package com.new_eklavya.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.new_eklavya.services.BlogService;



@Controller
public class BlogHomeController {
	
	@Autowired
	private BlogService blogRepo;
	
	@GetMapping("/blogs")
	public String getBlogList(Model model) {
		
		
		model.addAttribute("blogList", blogRepo.findBlogList());
		
		return "blog_post";
	}
	
	@GetMapping("blogs/{permalink}")
	public String getBlog(@PathVariable("permalink") String permalink, Model model) {

		
		model.addAttribute("blogPost", blogRepo.findByPermalink(permalink));
		return "blogs";
	}

}
