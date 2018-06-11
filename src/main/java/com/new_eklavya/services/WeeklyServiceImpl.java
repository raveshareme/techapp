package com.new_eklavya.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.new_eklavya.dto.PublishWeekly;
import com.new_eklavya.entities.Weekly;
import com.new_eklavya.repositories.WeeklyRepository;



@Service
public class WeeklyServiceImpl implements WeeklyService{
	
	@Autowired
	private WeeklyRepository repo;

	@Override
	public void publish(PublishWeekly pub) {
		
		
		
		Weekly weekly=new Weekly();
		weekly.setNews_link(pub.getNews_link());
		weekly.setNews_title(pub.getNews_title());
		weekly.setNews_description(pub.getNews_description());
		
		weekly.setBlog_link(pub.getBlog_link());
		weekly.setBlog_title(pub.getBlog_title());
		weekly.setBlog_description(pub.getBlog_description());
		
		weekly.setCode_link(pub.getCode_link());
		weekly.setCode_title(pub.getCode_title());
		weekly.setCode_description(pub.getCode_description());
		
		weekly.setOffice_link(pub.getOffice_link());
		weekly.setOffice_title(pub.getOffice_title());
		weekly.setOffice_description(pub.getOffice_description());
		
		weekly.setGenius_link(pub.getGenius_link());
		weekly.setGenius_title(pub.getGenius_title());
		weekly.setGenius_description(pub.getGenius_description());
		
		weekly.setWord_link(pub.getWord_link());
		weekly.setWord_title(pub.getOffice_title());
		weekly.setWord_description(pub.getWord_description());
		
		weekly.setIssue(pub.getIssue());
		weekly.setDescription(pub.getDescription());
		
		
		
		repo.save(weekly);
		
	}

	

	
	@Override
	public List<Weekly> findAllIssues() {
		
		List<Weekly> weekly=repo.findAll(new Sort(Sort.Direction.DESC, "Id"));
		
		for(Weekly w:weekly) {
		
		
		}
		return weekly;
	}




	@Override
	public Weekly findIssue(String issue) {
		Weekly weekly=repo.findByIssue(issue);
		return weekly;
	}

}
