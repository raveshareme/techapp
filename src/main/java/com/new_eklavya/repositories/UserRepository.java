package com.new_eklavya.repositories;

import java.util.Optional;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.new_eklavya.domain.User;





public interface UserRepository extends MongoRepository<User, String> {
	
	Optional<User> findByEmail(String email);
	Optional<User> findByResetPasswordCode(String resetPasswordCode);
	User findOne(String userId);
}

