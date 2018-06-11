package com.new_eklavya.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.new_eklavya.services.WeeklyService;




@Controller
public class MagazineHomeController {
	
	@Autowired
	private WeeklyService weeklyservice;
	
	@GetMapping("/weekly")
	public String getCoursePage(Model model) {
		
		
		
		
		model.addAttribute("issues", weeklyservice.findAllIssues());
		
		return "weekly";
	}
	@GetMapping("/weekly/{issue}")
	public String getIssue(@PathVariable("issue") String issue, Model model){
		
		model.addAttribute("weekly", weeklyservice.findIssue(issue));
		return "issue";
	}

}
