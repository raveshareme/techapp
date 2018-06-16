package com.new_eklavya.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.new_eklavya.dto.ResourceDto;
import com.new_eklavya.services.ResourceService;
import com.new_eklavya.util.MyUtil;

@Controller
public class FileManagementController {
	
	private ResourceService resourceService;

	protected FileManagementController(ResourceService resourceService) {
		super();
		this.resourceService = resourceService;
	}
	
	@GetMapping("/admin/fileManagement")
	private String getFileMngt(Model model){
		
		return "file_mngt";
	}
	@GetMapping("/admin/fileManagement/new")
	private String getNewFile(Model model){
		
		model.addAttribute("fileDto", new ResourceDto());
		
		return "new_file";
	}
	
	@PostMapping("/admin/fileManagement/new")
	public String postNew(@ModelAttribute("fileDto") @Valid ResourceDto fileDto, BindingResult result, RedirectAttributes attributes) {
			
			if(result.hasErrors()){
				MyUtil.flash(attributes, "error", "formError");
				return "new_file";
			}
			
			resourceService.saveFile(fileDto);
			MyUtil.flash(attributes, "success", "fileSuccess");
			return "redirect:/admin/fileManagement";
		}
	

}
