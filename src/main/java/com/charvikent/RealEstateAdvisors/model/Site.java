package com.charvikent.RealEstateAdvisors.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="site")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
public class Site {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String colony;
	private String sqYd;
	private String price;
	@CreationTimestamp
	private Date createdTime;
	@UpdateTimestamp
	private Date UpdatedTime;
	private Date validDate;
	private String listingId;
	@Transient
	private String vId;
	private String propertyType ;
	@ManyToOne(fetch = FetchType.EAGER, optional = false)
    @JoinColumn(name = "village_id", nullable = false)
	 @JsonIgnore
	private VillagesBean villageId; 
	
	
	
	public String getvId() {
		return vId;
	}
	public void setvId(String vId) {
		this.vId = vId;
	}
	public VillagesBean getVillageId() {
		return villageId;
	}
	public void setVillageId(VillagesBean villageId) {
		this.villageId = villageId;
	}
	//Hibernate requires no-args constructor
	public Site() {
	}
	public String getPropertyType() {
		return propertyType;
	}
	public void setPropertyType(String propertyType) {
		this.propertyType = propertyType;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getColony() {
		return colony;
	}
	public void setColony(String colony) {
		this.colony = colony;
	}
	public String getSqYd() {
		return sqYd;
	}
	public void setSqYd(String sqYd) {
		this.sqYd = sqYd;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public Date getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}
	public Date getUpdatedTime() {
		return UpdatedTime;
	}
	public void setUpdatedTime(Date updatedTime) {
		UpdatedTime = updatedTime;
	}
	public Date getValidDate() {
		return validDate;
	}
	public void setValidDate(Date validDate) {
		this.validDate = validDate;
	}
	public String getListingId() {
		return listingId;
	}
	public void setListingId(String listingId) {
		this.listingId = listingId;
	}
	@Override
	public String toString() {
		return "Site [id=" + id + ", colony=" + colony + ", sqYd=" + sqYd + ", price=" + price + ", createdTime="
				+ createdTime + ", UpdatedTime=" + UpdatedTime + ", validDate=" + validDate + ", listingId=" + listingId
				+ ", vId=" + vId + ", propertyType=" + propertyType + ", villageId=" + villageId + "]";
	}
	
	
}
