package com.new_eklavya.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class EmployeeController {
	
	
	@GetMapping("/employee")
	public String getEmployeeManagement() {
		
		return "employee_mngt";
	}

}
