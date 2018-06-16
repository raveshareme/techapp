package com.new_eklavya.dto;

import java.util.ArrayList;
import java.util.List;

public class BlogDto {
	
	
	private String title;
	private String imageUrl;
	
	
	private String description;
	
	
	private String content;
	
	private String permalink;
	
	private String tag;
	private String meta;
	private List<String> categories=new ArrayList<String>();
	
	private String fbLink;
	private String twink;
	private String gpLink;
	private String inLink;
	private String type;
	
	
	
	

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	

	protected BlogDto(String title, String imageUrl, String description, String content, String permalink, String tag,
			String meta, List<String> categories, String fbLink, String twink, String gpLink, String inLink,
			String type, String image) {
		super();
		this.title = title;
		this.imageUrl = imageUrl;
		this.description = description;
		this.content = content;
		this.permalink = permalink;
		this.tag = tag;
		this.meta = meta;
		this.categories = categories;
		this.fbLink = fbLink;
		this.twink = twink;
		this.gpLink = gpLink;
		this.inLink = inLink;
		this.type = type;
		this.image = image;
	}

	public String getTwink() {
		return twink;
	}

	public void setTwink(String twink) {
		this.twink = twink;
	}

	public String getFbLink() {
		return fbLink;
	}

	public void setFbLink(String fbLink) {
		this.fbLink = fbLink;
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

	public BlogDto() {
		super();
	}

	public BlogDto(String title, String imageUrl, String description, String content, String permalink, String tag,
			String meta, List<String> categories, String image) {
		super();
		this.title = title;
		this.imageUrl = imageUrl;
		this.description = description;
		this.content = content;
		this.permalink = permalink;
		this.tag = tag;
		this.meta = meta;
		this.categories = categories;
		this.image = image;
	}

	public List<String> getCategories() {
		return categories;
	}

	public void setCategories(List<String> categories) {
		this.categories = categories;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
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

	public String getPermalink() {
		
		
		
		return permalink;
	}

	public void setPermalink(String permalink) {
		
		this.permalink=permalink;
	}

	private String image;

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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}


	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	

}
