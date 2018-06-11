package com.new_eklavya.entities;

import java.util.Collection;
import java.util.HashSet;

import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.mongodb.core.mapping.Field;

@Document
public class Enrollment {
	
	private String courseName;	
	private String amount;
	private double discount;
	private String discountLink;
	private String discountExpiary;
	
	public static enum status {
		PENDING, SUCCESS
	}
	
	@Field("payment_status")
	private Collection<status> paymentStatus = new HashSet<status>();
	
	

	public Enrollment() {
		
	}
	
	public Enrollment(String courseName, String amount, double discount, String discountLink, String discountExpiary,
			Collection<status> paymentStatus) {
		
		this.courseName = courseName;
		this.amount = amount;
		this.discount = discount;
		this.discountLink = discountLink;
		this.discountExpiary = discountExpiary;
		this.paymentStatus = paymentStatus;
	}



	public String getCourseName() {
		return courseName;
	}

	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public double getDiscount() {
		return discount;
	}

	public void setDiscount(double discount) {
		this.discount = discount;
	}

	public String getDiscountLink() {
		return discountLink;
	}

	public void setDiscountLink(String discountLink) {
		this.discountLink = discountLink;
	}

	public String getDiscountExpiary() {
		return discountExpiary;
	}

	public void setDiscountExpiary(String discountExpiary) {
		this.discountExpiary = discountExpiary;
	}

	public Collection<status> getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(Collection<status> paymentStatus) {
		this.paymentStatus = paymentStatus;
	}
	
	
	

}
