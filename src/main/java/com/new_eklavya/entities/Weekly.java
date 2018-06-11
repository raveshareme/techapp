package com.new_eklavya.entities;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;
import org.springframework.format.annotation.DateTimeFormat;

@Document(collection="te_weekly")
public class Weekly {
	
	@Id
	private String id;
	
	
	
	private String issue;
	
	private String description;
	
	
	@Field
	private String news_link;
	@Field
	private String news_title;
	@Field
	private String news_description;
	
	@Field
	private String blog_link;
	@Field
	private String blog_title;
	@Field
	private String blog_description;
	
	@Field
	private String code_link;
	@Field
	private String code_title;
	@Field
	private String code_description;
	
	@Field
	private String office_link;
	@Field
	private String office_title;
	@Field
	private String office_description;
	
	@Field
	private String genius_link;
	@Field
	private String genius_title;
	@Field
	private String genius_description;
	
	@Field
	private String word_link;
	@Field
	private String word_title;
	@Field
	private String word_description;
	
	
	
	
	
	
	public Weekly() {
		
	}
	protected Weekly(String id, String issue, String description, String news_link, String news_title,
			String news_description, String blog_link, String blog_title, String blog_description, String code_link,
			String code_title, String code_description, String office_link, String office_title,
			String office_description, String genius_link, String genius_title, String genius_description,
			String word_link, String word_title, String word_description) {
		
		this.id = id;
		this.issue = issue;
		this.description = description;
		this.news_link = news_link;
		this.news_title = news_title;
		this.news_description = news_description;
		this.blog_link = blog_link;
		this.blog_title = blog_title;
		this.blog_description = blog_description;
		this.code_link = code_link;
		this.code_title = code_title;
		this.code_description = code_description;
		this.office_link = office_link;
		this.office_title = office_title;
		this.office_description = office_description;
		this.genius_link = genius_link;
		this.genius_title = genius_title;
		this.genius_description = genius_description;
		this.word_link = word_link;
		this.word_title = word_title;
		this.word_description = word_description;
	}








	public String getNews_link() {
		return news_link;
	}



	public void setNews_link(String news_link) {
		this.news_link = news_link;
	}



	public String getNews_title() {
		return news_title;
	}


	public void setNews_title(String news_title) {
		this.news_title = news_title;
	}
	public String getNews_description() {
		return news_description;
	}
	public void setNews_description(String news_description) {
		this.news_description = news_description;
	}
	public String getBlog_link() {
		return blog_link;
	}
	public void setBlog_link(String blog_link) {
		this.blog_link = blog_link;
	}
	public String getBlog_title() {
		return blog_title;
	}
	public void setBlog_title(String blog_title) {
		this.blog_title = blog_title;
	}
	public String getBlog_description() {
		return blog_description;
	}
	public void setBlog_description(String blog_description) {
		this.blog_description = blog_description;
	}

	public String getCode_link() {
		return code_link;
	}
	public void setCode_link(String code_link) {
		this.code_link = code_link;
	}
	public String getCode_title() {
		return code_title;
	}
	public void setCode_title(String code_title) {
		this.code_title = code_title;
	}
	public String getCode_description() {
		return code_description;
	}
	public void setCode_description(String code_description) {
		this.code_description = code_description;
	}
	public String getOffice_link() {
		return office_link;
	}
	public void setOffice_link(String office_link) {
		this.office_link = office_link;
	}
	public String getOffice_title() {
		return office_title;
	}
	public void setOffice_title(String office_title) {
		this.office_title = office_title;
	}

	public String getOffice_description() {
		return office_description;
	}
	public void setOffice_description(String office_description) {
		this.office_description = office_description;
	}
	public String getGenius_link() {
		return genius_link;
	}
	public void setGenius_link(String genius_link) {
		this.genius_link = genius_link;
	}
	public String getGenius_title() {
		return genius_title;
	}
	public void setGenius_title(String genius_title) {
		this.genius_title = genius_title;
	}
	public String getGenius_description() {
		return genius_description;
	}
	public void setGenius_description(String genius_description) {
		this.genius_description = genius_description;
	}
	public String getWord_link() {
		return word_link;
	}
	public void setWord_link(String word_link) {
		this.word_link = word_link;
	}
	public String getWord_title() {
		return word_title;
	}

	public void setWord_title(String word_title) {
		this.word_title = word_title;
	}
	public String getWord_description() {
		return word_description;
	}
	public void setWord_description(String word_description) {
		this.word_description = word_description;
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getIssue() {
		return issue;
	}

	public void setIssue(String issue) {
		this.issue = issue;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}



	
	
}
