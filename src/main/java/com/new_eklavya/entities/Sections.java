package com.new_eklavya.entities;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import org.springframework.data.mongodb.core.mapping.Document;

@Document
public class Sections {

	private String name;
	private String permalink;
	private String description;

	private Set<Lectures> lectures = new HashSet<Lectures>();

	public Sections(String name, String permalink, String description) {
		super();
		this.name = name;
		this.permalink = permalink;
		this.description = description;
	}

	public Sections() {
		super();
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setLectures(Set<Lectures> lectures) {
		this.lectures = lectures;
	}

	public void add(Lectures lectures) {

		this.lectures.add(lectures);
	}

	public Set<Lectures> getLectures() {
		return Collections.unmodifiableSet(lectures);
	}

	public String getPermalink() {
		return permalink;
	}

	public void setPermalink(String permalink) {
		this.permalink = permalink;
	}

}
