package com.new_eklavya.domain;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.stream.Collectors;

import javax.validation.constraints.NotNull;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.index.Indexed;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import com.new_eklavya.entities.Enrollment;



@Document(collection="users")
public class User implements UserDetails {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 7374620451193396354L;

	public static enum Role {
		UNVERIFIED, ADMIN, BLOCKED, USER
	}
	
	@Field("Enrolled_courses")
	private List<Enrollment> enrolledCourses = new ArrayList<Enrollment>();
	
	public List<Enrollment> getEnrolledCourses() {
		return enrolledCourses;
	}



	public void setEnrolledCourses(Enrollment enrollment) {
		this.enrolledCourses.add(enrollment);
	}

	
	@Id
	@NotNull
	private String id;
	
	@NotNull
	@Indexed
	private String email;
	
	@NotNull
	private String name;

	@NotNull
	private String password;
	
	
	private Collection<Role> roles = new HashSet<Role>();
	
	
	private String verificationCode;

	
	private String resetPasswordCode;
	
	
	private boolean editable;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Collection<Role> getRoles() {
		return roles;
	}

	public void setRoles(Collection<Role> roles) {
		this.roles = roles;
	}

	public String getVerificationCode() {
		return verificationCode;
	}

	public void setVerificationCode(String verificationCode) {
		this.verificationCode = verificationCode;
	}

	public String getResetPasswordCode() {
		return resetPasswordCode;
	}

	public void setResetPasswordCode(String resetPasswordCode) {
		this.resetPasswordCode = resetPasswordCode;
	}

	public boolean isEditable() {
		return editable;
	}

	public void setEditable(boolean editable) {
		this.editable = editable;
	}

	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		
		return roles.stream()
				.map(role -> new SimpleGrantedAuthority("ROLE_" + role.name()))
				.collect(Collectors.toSet());
	}

	@Override
	public String getUsername() {
		
		return email;
	}

	@Override
	public boolean isAccountNonExpired() {

		return true;
	}

	@Override
	public boolean isAccountNonLocked() {

		return true;
	}

	@Override
	public boolean isCredentialsNonExpired() {

		return true;
	}

	@Override
	public boolean isEnabled() {

		return true;
	}
}
