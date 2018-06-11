package com.new_eklavya.repositories;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.mongodb.repository.Query;

import com.new_eklavya.entities.Courses;




public interface CourseRepo extends MongoRepository<Courses, String> {
	
	Courses findCourseByPermalink(String title);

	

	
	Courses findBySections(String section_name);



	@Query(value="{'permalink': ?0, 'sections.permalink': ?1}")
	Courses findCourseBySections(String permalink1, String permalink2);




	
	

	

	

	

}
