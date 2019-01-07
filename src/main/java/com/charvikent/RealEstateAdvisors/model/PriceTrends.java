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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name="priceTrends")
public class PriceTrends {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@ManyToOne(fetch = FetchType.EAGER, optional = false)
    @JoinColumn(name = "villageId", nullable = false)
	private VillagesBean villageId;
	@CreationTimestamp
	private Date createdDate;
	@UpdateTimestamp
	private Date updatedDate;
	private String propertyType;
	@Temporal(TemporalType.DATE)
	private Date priceTrendTime;
	private Double minAmount;
	private Double maxAmount;
	public VillagesBean getVillageId() {
		return villageId;
	}
	public void setVillageId(VillagesBean villageId) {
		this.villageId = villageId;
		
	}
	public Date getPriceTrendTime() {
		return priceTrendTime;
	}
	public void setPriceTrendTime(Date priceTrendTime) {
		this.priceTrendTime = priceTrendTime;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getPropertyType() {
		return propertyType;
	}
	public void setPropertyType(String propertyType) {
		this.propertyType = propertyType;
	}
	
	public Double getMinAmount() {
		return minAmount;
	}
	public void setMinAmount(Double minAmount) {
		this.minAmount = minAmount;
	}
	public Double getMaxAmount() {
		return maxAmount;
	}
	public void setMaxAmount(Double maxAmount) {
		this.maxAmount = maxAmount;
	}
	@Override
	public String toString() {
		return "PriceTrends [id=" + id + ", villageId=" + villageId + ", createdDate=" + createdDate + ", updatedDate="
				+ updatedDate + ", propertyType=" + propertyType + ", priceTrendTime=" + priceTrendTime + ", minAmount="
				+ minAmount + ", maxAmount=" + maxAmount + "]";
	}
	public PriceTrends() {
	}
	 
	
	
	
}
