package com.new_eklavya.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.new_eklavya.entities.Vlogs;



public interface VlogsRepository extends MongoRepository<Vlogs, String> {

}
