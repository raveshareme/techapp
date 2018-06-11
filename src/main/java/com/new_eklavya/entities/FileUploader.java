package com.new_eklavya.entities;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.web.multipart.MultipartFile;

public class FileUploader {
	
	private static String UPLOAD_FOLDER="E://eklavya//8workspace//new_myapp//src//main//resources//static//public//lib//bootstrap//img//";
	
	private MultipartFile file;
	private String fileUrl;
	
	
	
	public FileUploader() {
		
	}
	public FileUploader(MultipartFile file, String fileUrl) {
		
		this.file = file;
		this.fileUrl = fileUrl;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		try {

            // Get the file and save it somewhere
            byte[] bytes = file.getBytes();
            Path path = Paths.get(UPLOAD_FOLDER + file.getOriginalFilename());
            Files.write(path, bytes);
		} catch (IOException e) {
            e.printStackTrace();
        }
	}
	public String getFileUrl() {
		return fileUrl;
	}
	public void setFileUrl(String fileUrl) {
		this.fileUrl = fileUrl;
	}
	
	

}
