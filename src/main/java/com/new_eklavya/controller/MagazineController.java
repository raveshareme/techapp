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

import com.new_eklavya.dto.PublishWeekly;
import com.new_eklavya.services.WeeklyService;
import com.new_eklavya.util.MyUtil;




@Controller
@RequestMapping("/admin")
public class MagazineController {
	
	@Autowired
	private WeeklyService magazineService;
	
	
	
	
	@GetMapping("/magazine")
	public String getMagazineManagement( Model model) {
		
		model.addAttribute("weeklyList", magazineService.findAllIssues());
		return "magazine_mngt";
	}
	
	@GetMapping("/magazine/new")
	public String getNewMagazine( Model model) {
		
		model.addAttribute("publish", new PublishWeekly());
		return "new-magazine-issue";
	}
	
	
	@PostMapping("/magazine/new")
	public String postNewMagazine(@ModelAttribute("publish") @Valid PublishWeekly publish, 
			BindingResult result, RedirectAttributes redirectAttributes) {
		
		
		if (result.hasErrors()) {
			
			MyUtil.flash(redirectAttributes, "error", "formError");
			return "redirect:/admin/magazine/new";
			
		}
		
		magazineService.publish(publish);
		MyUtil.flash(redirectAttributes, "success", "weeklySuccess");
		return "redirect:/admin/magazine";
	}
		
}
