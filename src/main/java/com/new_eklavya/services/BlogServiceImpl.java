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
		
	
		blogs.setType(blogDto.getType());
		blogs.setTitle(blogDto.getTitle());
		blogs.setImage(blogDto.getImageUrl());
		blogs.setDescription(blogDto.getDescription());
		blogs.setContent(blogDto.getContent());
		blogs.setTag(blogDto.getTag());
		blogs.setMeta(blogDto.getMeta());
		blogs.setCategories(blogDto.getCategories());
		blogs.setImage(blogDto.getImageUrl());
		blogs.setFbLink(blogDto.getFbLink());
		blogs.setTwink(blogDto.getTwink());
		blogs.setGpLink(blogDto.getGpLink());
		blogs.setInLink(blogDto.getInLink());
		
		blogRepo.save(blogs);
		
		
	}

	@Override
	public List<Blogs> findBlogList() {
//		return blogRepo.findAll(new Sort(Sort.Direction.DESC, "Id"));
		return blogRepo.findBytype("Blog");
	}



	@Override
	public Blogs findByPermalink(String title) {
		
		return blogRepo.findByPermalink(title);
	}

	@Override
	public void editBlog(BlogDto bdto, String permalink) {
		Blogs blog=blogRepo.findByPermalink(permalink);
		
		blog.setType(bdto.getType());
		blog.setTitle(bdto.getTitle());
		blog.setDescription(bdto.getDescription());
		blog.setContent(bdto.getContent());
		blog.setTag(bdto.getTag());
		blog.setMeta(bdto.getMeta());
//		blog.setCategories(bdto.getCategories());
		blog.setImage(bdto.getImageUrl());
		blog.setFbLink(bdto.getFbLink());
		blog.setTwink(bdto.getTwink());
		blog.setGpLink(bdto.getGpLink());
		blog.setInLink(bdto.getInLink());
		
		blogRepo.save(blog);
		
	}

	@Override
	public void deleteBlog(String permalink) {
		
		Blogs blog=blogRepo.findByPermalink(permalink);
		blogRepo.delete(blog);
		
	}

	@Override
	public List<Blogs> findCodeList() {
		
		
		
		return blogRepo.findBytype("Code");
	}

	@Override
	public List<Blogs> findConcordanceList() {
		return blogRepo.findBytype("Concordance");
	}

	@Override
	public List<Blogs> findAdminBlogList() {
		return blogRepo.findAll(new Sort(Sort.Direction.DESC, "Id"));
	}

	
	

}
