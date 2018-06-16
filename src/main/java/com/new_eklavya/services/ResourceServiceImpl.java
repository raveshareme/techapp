package com.new_eklavya.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.new_eklavya.dto.ResourceDto;
import com.new_eklavya.entities.Resources;
import com.new_eklavya.repositories.ResourcesRepository;

@Service("Resources")
public class ResourceServiceImpl implements ResourceService {
	
	@Autowired
	private ResourcesRepository resourcesRepo;

	@Override
	public void saveFile(ResourceDto fileDto) {
		
		Resources resources=new Resources();
		
		resources.setResourceName(fileDto.getName());
		resources.setResourceLink(fileDto.getLink());
		resources.setResourceDescription(fileDto.getDescription());
		
		resourcesRepo.save(resources);
	}

	@Override
	public List<Resources> findResources() {
		
		return resourcesRepo.findAll();
	}

	
}
