package com.new_eklavya.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/wysiwyg")
public class SummerNoteController {
	
	
	@GetMapping
	public String wysiwyg() {
		
		return "wysiwyg";
	}

}
