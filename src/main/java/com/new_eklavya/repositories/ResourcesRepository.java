package com.new_eklavya.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;

import com.new_eklavya.entities.Resources;

public interface ResourcesRepository extends MongoRepository<Resources, String> {

}
