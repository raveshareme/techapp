package com.new_eklavya.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.new_eklavya.services.ResourceService;

@Controller
public class ResourceController {
	
	private ResourceService resourceService;
	
	
	
	public ResourceController(ResourceService resourceService) {
		
		this.resourceService = resourceService;
	}



	@GetMapping("/downloads")
	public String getdownloads(Model model){
		
		model.addAttribute("resourceList", resourceService.findResources());
		return "downloads";
	}

}
