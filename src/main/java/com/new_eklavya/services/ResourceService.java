package com.new_eklavya.services;



import java.util.List;

import com.new_eklavya.dto.ResourceDto;
import com.new_eklavya.entities.Resources;

public interface ResourceService {

	void saveFile(ResourceDto fileDto);

	public abstract List<Resources> findResources();

}
