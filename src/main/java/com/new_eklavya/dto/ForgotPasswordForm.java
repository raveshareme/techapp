package com.new_eklavya.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import com.new_eklavya.entities.Users;




public class ForgotPasswordForm {
	
	@NotNull
	@Size(min=1, max=Users.EMAIL_MAX, message="{emailSizeError}")
	@Pattern(regexp=Users.EMAIL_PATTERN, message="{emailPatternError}")
	private String email = "";

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

}
