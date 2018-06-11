package com.new_eklavya.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.new_eklavya.dto.BlogDto;
import com.new_eklavya.entities.Blogs;
import com.new_eklavya.repositories.BlogRepo;


@Service
public class BlogServiceImpl implements BlogService{
	
	@Autowired
	private BlogRepo blogRepo;
	
	

	@Override
	public void submitBlog(BlogDto blogDto) {
		Blogs blogs=new Blogs();
		String permalink= blogDto.getTitle().toLowerCase();
		permalink=permalink.replaceAll("\\s", "-");
		
		blogs.setPermalink(permalink);
		
	
		
		blogs.setTitle(blogDto.getTitle());
		blogs.setImage(blogDto.getImageUrl());
		blogs.setDescription(blogDto.getDescription());
		blogs.setContent(blogDto.getContent());
		blogs.setTag(blogDto.getTag());
		blogs.setMeta(blogDto.getMeta());
		
		blogRepo.save(blogs);
		
		
	}

	@Override
	public List<Blogs> findBlogList() {
		return blogRepo.findAll(new Sort(Sort.Direction.DESC, "Id"));
	}



	@Override
	public Blogs findByPermalink(String title) {
		
		return blogRepo.findByPermalink(title);
	}

	@Override
	public void editBlog(BlogDto bdto, String permalink) {
		Blogs blog=blogRepo.findByPermalink(permalink);
		
		blog.setTitle(bdto.getTitle());
		blog.setDescription(bdto.getDescription());
		blog.setContent(bdto.getContent());
		blog.setTag(bdto.getTag());
		blog.setMeta(bdto.getMeta());
		
		blogRepo.save(blog);
		
	}

	@Override
	public void deleteBlog(String permalink) {
		
		Blogs blog=blogRepo.findByPermalink(permalink);
		blogRepo.delete(blog);
		
	}

	
	

}
