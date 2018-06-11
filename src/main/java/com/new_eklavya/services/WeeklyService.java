package com.new_eklavya.services;

import java.util.List;

import com.new_eklavya.dto.PublishWeekly;
import com.new_eklavya.entities.Weekly;



public interface WeeklyService {
	
	public abstract void publish(PublishWeekly pub);

	public abstract List<Weekly> findAllIssues();

	public abstract Weekly findIssue(String issue);

	

}
