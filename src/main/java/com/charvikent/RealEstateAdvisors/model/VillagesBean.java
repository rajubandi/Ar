package com.charvikent.RealEstateAdvisors.model;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="villages")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
public class VillagesBean {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String vName;
	//private String colony;
	@CreationTimestamp
	private Date createdDate;
	@UpdateTimestamp
	private Date updatedDate;
	private String pinCode;
	@Transient private int countOfSitesByVillage;
	
	public int getCountOfSitesByVillage() {
		return countOfSitesByVillage;
	}

	public void setCountOfSitesByVillage(int countOfSitesByVillage) {
		this.countOfSitesByVillage = countOfSitesByVillage;
	}

	public String getvName() {
		return vName;
	}

	public void setvName(String vName) {
		this.vName = vName;
	}

	@OneToMany(mappedBy = "villageId", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<Site> sites;

	public VillagesBean() {
	}

	public VillagesBean(VillagesBean villagesBean) {
		this.id = villagesBean.id;
		this.vName = villagesBean.vName;
		this.createdDate = villagesBean.createdDate;
		this.updatedDate = villagesBean.updatedDate;
		this.pinCode = villagesBean.pinCode;
		this.sites = villagesBean.sites;
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

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public List<Site> getSites() {
		return sites;
	}

	public void setSites(List<Site> sites) {
		this.sites = sites;
	}

	@Override
	public String toString() {
		return "VillagesBean [id=" + id + ", vName=" + vName + ", createdDate=" + createdDate + ", updatedDate="
				+ updatedDate + ", pinCode=" + pinCode + ", countOfSitesByVillage=" + countOfSitesByVillage + ", sites="
				+ sites + "]";
	}

	
	

}
