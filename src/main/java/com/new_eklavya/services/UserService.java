package com.new_eklavya.services;


import javax.mail.MessagingException;

import org.springframework.boot.context.event.ApplicationReadyEvent;

import com.new_eklavya.commnad.ForgotPasswordCommand;
import com.new_eklavya.commnad.UserCommand;
import com.new_eklavya.domain.User;



public interface UserService {


	void signup(UserCommand userCommand);
	void afterApplicationReady(ApplicationReadyEvent event);
	void verify(String verificationCode);
	void resendVerificationMail(User user) throws MessagingException;
	void forgotPassword(ForgotPasswordCommand forgotPasswordCommand);
	void resetPassword(String resetPasswordCode, String password);
	User fetchById(String userId);
	void update(User oldUser, UserCommand userCommand);
	void enroll(String userId, String courseLink);

	



}
