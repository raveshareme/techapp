package com.new_eklavya.controller;

import java.util.Objects;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.new_eklavya.commnad.ResetPasswordCommand;
import com.new_eklavya.services.UserService;
import com.new_eklavya.util.MyUtils;




@Controller
@RequestMapping("/reset-password/{resetPasswordCode}")
public class ResetPasswordController {
	
	private static Log log = LogFactory.getLog(ResetPasswordController.class);
	
	private UserService userService;
	
	public ResetPasswordController(UserService userService) {

		this.userService = userService;
	}

	@GetMapping
	public String resetPassword(Model model) {
		
		model.addAttribute(new ResetPasswordCommand());
		return "reset-password";
	}	

	@PostMapping
	public String doResetPassword(
			@PathVariable String resetPasswordCode,
			@Validated ResetPasswordCommand resetPasswordCommand,
			BindingResult result,
			RedirectAttributes redirectAttributes) {
		
		if (!Objects.equals(resetPasswordCommand.getPassword(),
				resetPasswordCommand.getRetypePassword()))
			result.rejectValue("retypePassword", "passwordsDoNotMatch");
			
		if (result.hasErrors())
			return "reset-password";
		
		userService.resetPassword(resetPasswordCode, 
				resetPasswordCommand.getPassword());
		MyUtils.flash(redirectAttributes, "success", "passwordChanged");
		return "redirect:/login";
	}	
}
