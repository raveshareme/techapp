package com.new_eklavya.repositories;

import java.util.List;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.new_eklavya.entities.Blogs;



public interface BlogRepo extends MongoRepository<Blogs, String> {

	Blogs findByPermalink(String title);

	List<Blogs> findBytype(String string);

}
