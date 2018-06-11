package com.new_eklavya.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.new_eklavya.entities.Blogs;



public interface BlogRepo extends MongoRepository<Blogs, String> {

	Blogs findByPermalink(String title);

}
