package com.new_eklavya.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.new_eklavya.services.VlogsService;



@Controller
public class VideoBlogs {
	
	@Autowired
	VlogsService service;
	
	
	@GetMapping("/videos")
	public String getVideoBlogs(Model model) {
		
		model.addAttribute("vlogList", service.getAllVlogs());
		
		return "video_blogs";
		
	}

}
