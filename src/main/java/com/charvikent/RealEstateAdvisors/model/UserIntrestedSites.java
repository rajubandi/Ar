package com.charvikent.RealEstateAdvisors.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="userIntrestedSites")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
public class UserIntrestedSites {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private int siteId;
	//private String colony;
	@CreationTimestamp
	private Date createdDate;
	@UpdateTimestamp
	private Date updatedDate;
	private int userId;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getSiteId() {
		return siteId;
	}
	public void setSiteId(int siteId) {
		this.siteId = siteId;
	}
	public Date getCreatedDate() {
		return createdDate;
	}
	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}
	public Date getUpdatedDate() {
		return updatedDate;
	}
	public void setUpdatedDate(Date updatedDate) {
		this.updatedDate = updatedDate;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	@Override
	public String toString() {
		return "UserIntrestedSites [id=" + id + ", siteId=" + siteId + ", createdDate=" + createdDate + ", updatedDate="
				+ updatedDate + ", userId=" + userId + "]";
	}
	public UserIntrestedSites() {
	}
	

	

}
