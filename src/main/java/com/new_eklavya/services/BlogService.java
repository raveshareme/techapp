package com.new_eklavya.services;

import java.util.List;

import com.new_eklavya.dto.BlogDto;
import com.new_eklavya.entities.Blogs;



public interface BlogService {
	
	public abstract void submitBlog(BlogDto blogDto);
	public abstract List<Blogs> findBlogList();
	
//	public abstract Blogs findByTitle(String title);
	public abstract Blogs findByPermalink(String title);
	public abstract void editBlog(BlogDto bdto, String permalink);
	public abstract void deleteBlog(String permalink);
	public abstract List<Blogs> findCodeList();
	public abstract List<Blogs> findConcordanceList();
	public abstract List<Blogs> findAdminBlogList();
	

}
