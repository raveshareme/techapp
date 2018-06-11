package com.new_eklavya.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.new_eklavya.commnad.UserCommand;
import com.new_eklavya.commnad.UserCommand.SignupValidation;
import com.new_eklavya.services.UserService;




@Controller
@RequestMapping("/signup")
public class SignupController {
	
	private static Log log = LogFactory.getLog(SignupController.class);
	
	private UserService userService;
	
	public SignupController(UserService userService) {

		this.userService = userService;
	}

	@GetMapping
	public String signup(Model model) {
		
		model.addAttribute("user", new UserCommand());
		return "sign-up";
	}	

	@PostMapping
	public String doSignup(
			@Validated(SignupValidation.class)
			@ModelAttribute("user") UserCommand user,Model model,
			BindingResult result,
			RedirectAttributes redirectAttributes) {
		
		if (result.hasErrors())
			return "sign-up";
		
		userService.signup(user);
		model.addAttribute("email", user.getEmail());
		return "success";
	}	
}

