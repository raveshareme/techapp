package com.new_eklavya.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.new_eklavya.dto.VlogsDto;
import com.new_eklavya.entities.Vlogs;
import com.new_eklavya.repositories.VlogsRepository;



@Service
public class VlogsServiceImpl implements VlogsService {
	
	@Autowired
	private VlogsRepository repo;

	@Override
	public void addVlogs(VlogsDto vdto) {
		
		Vlogs vlog=new Vlogs();
		
		vlog.setTitle(vdto.getTitle());
		vlog.setLink(vdto.getLink());
		vlog.setDescription(vdto.getDescription());
		
		repo.save(vlog);
		
		
	}

	@Override
	public List<Vlogs> getAllVlogs() {

		
		return repo.findAll(new Sort(Sort.Direction.DESC, "Id"));
		
	}

}
