package com.new_eklavya.entities;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document(collection="blog")
public class Blogs {
	
	@Id
	private String id;
	
	
	private String title;
	private String description;
	private String content;
	private String image;
	
	private String permalink;
	private String category;
	private String tag;
	private String meta;
	private String imageUrl;
	private String fbLink;
	private String twink;
	private String gpLink;
	private String inLink;
	private String type;
	private List<String> categories=new ArrayList<String>();
	
	
	

public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
protected Blogs(String id, String title, String description, String content, String image, String permalink,
			String category, String tag, String meta, String imageUrl, String fbLink, String twink, String gpLink,
			String inLink, String type, List<String> categories) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.content = content;
		this.image = image;
		this.permalink = permalink;
		this.category = category;
		this.tag = tag;
		this.meta = meta;
		this.imageUrl = imageUrl;
		this.fbLink = fbLink;
		this.twink = twink;
		this.gpLink = gpLink;
		this.inLink = inLink;
		this.type = type;
		this.categories = categories;
	}
public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	public String getFbLink() {
		return fbLink;
	}
	public void setFbLink(String fbLink) {
		this.fbLink = fbLink;
	}
	public String getTwink() {
		return twink;
	}
	public void setTwink(String twink) {
		this.twink = twink;
	}
	public String getGpLink() {
		return gpLink;
	}
	public void setGpLink(String gpLink) {
		this.gpLink = gpLink;
	}
	public String getInLink() {
		return inLink;
	}
	public void setInLink(String inLink) {
		this.inLink = inLink;
	}
public Blogs() {
		
	}
	public Blogs(String id, String title, String description, String content, String image, String permalink,
			String category, String tag, String meta, String imageUrl, List<String> categories) {
		super();
		this.id = id;
		this.title = title;
		this.description = description;
		this.content = content;
		this.image = image;
		this.permalink = permalink;
		this.category = category;
		this.tag = tag;
		this.meta = meta;
		this.imageUrl = imageUrl;
		this.categories = categories;
	}
	public List<String> getCategories() {
		return categories;
	}
	public void setCategories(List<String> categories) {
		this.categories = categories;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getMeta() {
		return meta;
	}
	public void setMeta(String meta) {
		this.meta = meta;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getPermalink() {
		return permalink;
	}
	public void setPermalink(String permalink) {
		this.permalink = permalink;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	

}
