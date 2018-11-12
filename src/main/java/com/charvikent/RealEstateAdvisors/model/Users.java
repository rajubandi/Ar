package com.charvikent.RealEstateAdvisors.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="users")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"}) 
public class Users {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String firstName;
	private String lastName;
	private String userName;
	private String mobileNumber;
	private String email;
	private String designation;
	@CreationTimestamp
	private Date createdTime;
	@UpdateTimestamp
	private Date UpdatedTime;
	@Column
	private String password;
	@Transient
	private String npassword;
	@Transient
	private String cpassword;
	@Column
	private String enabled;
	
	
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNpassword() {
		return npassword;
	}
	public void setNpassword(String npassword) {
		this.npassword = npassword;
	}
	public String getCpassword() {
		return cpassword;
	}
	public void setCpassword(String cpassword) {
		this.cpassword = cpassword;
	}
	public String getEnabled() {
		return enabled;
	}
	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	@Override
	public String toString() {
		return "Users [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", userName=" + userName
				+ ", mobileNumber=" + mobileNumber + ", email=" + email + ", designation=" + designation
				+ ", createdTime=" + createdTime + ", UpdatedTime=" + UpdatedTime + ", password=" + password
				+ ", npassword=" + npassword + ", cpassword=" + cpassword + ", enabled=" + enabled + "]";
	}
	
	public Users(Users user) {
		this.id = user.id;
		this.firstName = user.firstName;
		this.lastName = user.lastName;
		this.userName = user.userName;
		this.mobileNumber = user.mobileNumber;
		this.email = user.email;
		this.designation = user.designation;
		this.createdTime = user.createdTime;
		this.UpdatedTime = user.UpdatedTime;
		this.password = user.password;
		this.npassword = user.npassword;
		this.cpassword = user.cpassword;
		this.enabled = user.enabled;
	}
	
	
	
	
	
	
}
