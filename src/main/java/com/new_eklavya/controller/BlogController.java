package com.new_eklavya.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.new_eklavya.dto.BlogDto;
import com.new_eklavya.services.BlogService;
import com.new_eklavya.util.MyUtil;



@Controller
@RequestMapping("/admin")
public class BlogController {
	
	
	@Autowired
	private BlogService blogService;
	
	@GetMapping("/blog-management")
	public String getBlogAdmin(Model model) {
		
		model.addAttribute("blogList", blogService.findAdminBlogList() );
		
		return "blog_mngt";
	}
	
	@GetMapping("/blog-management/new")
	public String getNewBlog(Model model) {
		
		model.addAttribute(new BlogDto());
		return "new_blog";
	}
	
	@PostMapping("/blog-management/new") 
	public String postNewBlog(@ModelAttribute("blogDto") @Valid BlogDto blogDto, BindingResult result, RedirectAttributes attributes) {
		
		if(result.hasErrors()){
			MyUtil.flash(attributes, "error", "formError");
			return "new_blog";
		}
		
		blogService.submitBlog(blogDto);
		MyUtil.flash(attributes, "success", "blogSuccess");
		return "redirect:/admin/blog-management/new";
	}

}
