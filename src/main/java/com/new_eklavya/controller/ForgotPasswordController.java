package com.new_eklavya.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.new_eklavya.commnad.ForgotPasswordCommand;
import com.new_eklavya.services.UserService;





@Controller
@RequestMapping("/forgot-password")
public class ForgotPasswordController {
	
	private static Log log = LogFactory.getLog(ForgotPasswordController.class);
	
	private UserService userService;
	
	public ForgotPasswordController(UserService userService) {

		this.userService = userService;
	}

	@GetMapping
	public String forgotPassword(Model model) {
		
		model.addAttribute(new ForgotPasswordCommand());
		return "forgot-password";
	}	

	@PostMapping
	public String doForgotPassword(
			@Validated ForgotPasswordCommand forgotPasswordCommand,
			BindingResult result,
			RedirectAttributes redirectAttributes) {
		
		if (result.hasErrors())
			return "forgot-password";
		
		userService.forgotPassword(forgotPasswordCommand);
		
		return "redirect:/";
	}	
}
