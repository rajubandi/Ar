package com.charvikent.RealEstateAdvisors.config;


import java.util.Collection;
import java.util.List;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.util.StringUtils;

import com.charvikent.RealEstateAdvisors.model.Users;




public class CustomCustomerUserDetails extends Users implements UserDetails {	
	
	private static final long serialVersionUID = 1L;
	private List<String> customerRoles;
	

	public CustomCustomerUserDetails(Users customer,List<String> customerRoles){
		super(customer);
		this.customerRoles=customerRoles;
	}
	
	
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		
		String roles=StringUtils.collectionToCommaDelimitedString(customerRoles);			
		return AuthorityUtils.commaSeparatedStringToAuthorityList(roles);
	}

	@Override
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}
	@Override
	public boolean isAccountNonLocked() {
		return true;
	}
	
	@Override
	public boolean isCredentialsNonExpired() {
		return true;
	}
	@Override
	public boolean isEnabled() {
		return true;
	}


	@Override
	public String getUsername() {
		return super.getMobileNumber();
	}


	@Override
	public String getPassword() {
		return super.getPassword();
	}


}
