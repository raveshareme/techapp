package com.new_eklavya.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.rememberme.TokenBasedRememberMeServices;


@Configuration
@EnableGlobalMethodSecurity(prePostEnabled=true)
public class WebSecurityConfig extends WebSecurityConfigurerAdapter{
	
	private UserDetailsService userDetailsService;
	private String rememberMeKey;
	
	public WebSecurityConfig(UserDetailsService userDetailsService,
			@Value("${rememberMeKey}") String rememberMeKey) {

		this.userDetailsService = userDetailsService;
		this.rememberMeKey = rememberMeKey;
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		
		return new BCryptPasswordEncoder();
	}

	// @formatter:off
	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http
			.authorizeRequests()
				.mvcMatchers(HttpMethod.GET, "/",
						"/users/*",
                		"/error",
                		"/course/**",
                		"/blogs/**",
                		"/weekly/**",
                		"/public/**",
                		"/faq",
                		"/contact",
                		"/legal",
                		"/wysiwyg",
                		"/knowledge-base").permitAll()
				.mvcMatchers("/signup",
						"/forgot-password",
						"/reset-password/*").permitAll()
				.mvcMatchers("/admin/**").hasRole("ADMIN")
				.anyRequest().authenticated()
				.and()
			.formLogin().loginPage("/login").permitAll().defaultSuccessUrl("/user", true)
			.and().logout().permitAll()
			.and().rememberMe()
				.key(rememberMeKey)
				.rememberMeServices(new TokenBasedRememberMeServices(rememberMeKey,
						userDetailsService));
	}
	// @formatter:on
}
