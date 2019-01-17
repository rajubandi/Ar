package com.charvikent.RealEstateAdvisors.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="submitproperty")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class SubmitProperty {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer sNo;
	
	private String buyerRbuilder;
	private String email;
	private String phoneNumber;
	private String expectPrice;
	private String location;	
	private String AdditionalInfo;
	
	public SubmitProperty() {}
	
	public SubmitProperty(String buyerRbuilder, String email, String phoneNumber, String expectPrice, String location,
			String additionalInfo) {
		
		this.buyerRbuilder = buyerRbuilder;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.expectPrice = expectPrice;
		this.location = location;
		this.AdditionalInfo = additionalInfo;
	}	

	public String getBuyerRbuilder() {
		return this.buyerRbuilder;
	}

	public void setBuyerRbuilder(String buyerRbuilder) {
		this.buyerRbuilder = buyerRbuilder;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return this.phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getExpectPrice() {
		return this.expectPrice;
	}

	public void setExpectPrice(String expectPrice) {
		this.expectPrice = expectPrice;
	}

	public String getLocation() {
		return this.location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getAdditionalInfo() {
		return this.AdditionalInfo;
	}

	public void setAdditionalInfo(String additionalInfo) {
		AdditionalInfo = additionalInfo;
	}
	
	@Override
	public String toString() {
		return "SubmitProperty [buyerRbuilder=" + buyerRbuilder + ", email=" + email + ", phoneNumber=" + phoneNumber
				+ ", expectPrice=" + expectPrice + ", location=" + location + ", AdditionalInfo=" + AdditionalInfo
				+ "]";
	}
}