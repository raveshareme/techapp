package com.new_eklavya.services;

import java.util.List;

import com.new_eklavya.dto.VlogsDto;
import com.new_eklavya.entities.Vlogs;


public interface VlogsService {
	
	public abstract void addVlogs(VlogsDto vdto);

	public abstract List<Vlogs> getAllVlogs();

}
