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

import com.new_eklavya.dto.BlogDto;
import com.new_eklavya.entities.Blogs;
import com.new_eklavya.services.BlogService;
import com.new_eklavya.util.MyUtil;



@Controller
@RequestMapping("/admin/blog-management/")
public class BlogEditController {
	
	
	@Autowired
	private BlogService blogService;
	
	@GetMapping("/{permalink}/edit")
	public String getEditBlog(@PathVariable("permalink") String permalink, Model model){
		
		
		Blogs blog=blogService.findByPermalink(permalink);
		BlogDto bdto=new BlogDto();
		System.out.println("get Edit is called");
		bdto.setTitle(blog.getTitle());
		bdto.setDescription(blog.getDescription());
		bdto.setContent(blog.getContent());
		bdto.setTag(blog.getTag());
		bdto.setMeta(blog.getMeta());
		bdto.setCategories(blog.getCategories());
		bdto.setFbLink(blog.getFbLink());
		bdto.setTwink(blog.getTwink());
		bdto.setGpLink(blog.getGpLink());
		bdto.setInLink(blog.getInLink());
		System.out.println(bdto.getTitle());
		model.addAttribute("bdto", bdto);
		System.out.println(bdto.getTitle());
		System.out.println("Could not get the value for title");
		return "blog-edit";
	}
	
	@PostMapping("/{permalink}/edit")
	public String postEditBlog(@PathVariable("permalink") String permalink, @ModelAttribute("bdto") @Valid BlogDto bdto, BindingResult result, RedirectAttributes redirectAttributes) {
		
		if(result.hasErrors()){
			MyUtil.flash(redirectAttributes, "error", "formError");
			return "redirect:/admin/blog-management";
			
		}
		
		
		blogService.editBlog(bdto, permalink);
		System.out.println(bdto.getTag()+"Meta Description is "+bdto.getMeta());
		MyUtil.flash(redirectAttributes, "success", "blogSuccess");
		
		
		return "redirect:/admin/blog-management";
	}
	@GetMapping("/{permalink}/delete")
	public String deleteBlog(@PathVariable("permalink") String permalink, Model model, RedirectAttributes redirectAttributes){
		
		blogService.deleteBlog(permalink);
		MyUtil.flash(redirectAttributes, "success", "deleteSuccess");
		
		return "redirect:/admin/blog-management";
	}

}
	
	
