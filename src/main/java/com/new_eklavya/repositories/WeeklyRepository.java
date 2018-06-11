package com.new_eklavya.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.new_eklavya.entities.Weekly;



public interface WeeklyRepository extends MongoRepository<Weekly, String> {
	
	Weekly findByIssue(String issue);

}
