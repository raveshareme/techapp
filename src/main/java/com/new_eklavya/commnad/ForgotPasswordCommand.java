package com.new_eklavya.commnad;

import com.new_eklavya.validators.EmailExists;

public class ForgotPasswordCommand {
	
	@EmailExists
	private String email;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
