package com.charvikent.RealEstateAdvisors.config;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.charvikent.RealEstateAdvisors.model.Users;
import com.charvikent.RealEstateAdvisors.service.UsersServiceImpl;


@Service
public class CustomUserDetailsService implements UserDetailsService{
	@Autowired
	private UsersServiceImpl userRepository;
	/*@Autowired
	private  UsersServiceImpl userRolesRepository;
	
	@Autowired
	private  UsersServiceImpl customerRepository;*/
	
	@Autowired
	HttpSession session;
	@Autowired HttpServletResponse response;
	/*@Autowired
	private  CustomerDao customerRolesRepository;*/
	
	
	//private static String USER_TYPE = "userType";
	
	/*@Autowired
    public CustomUserDetailsService(UserDao userRepository,UserDao userRolesRepository) {
        this.userRepository = userRepository;
        this.userRolesRepository=userRolesRepository;
    }*/
	Users user =null;
	Object objUser =null;    
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		
		//String userType = (String) RequestContextHolder.getRequestAttributes().getAttribute(USER_TYPE, RequestAttributes.SCOPE_SESSION);
		//System.out.println(userType);
		//objUser = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		user=userRepository.findByUserName(username);
		//user = (Users) objUser;
		
		Users userDesignation= userRepository.getUserDesignationById(user.getId());
		
		
		Users customer=null;
		List<String> roleslist =new ArrayList<String>();
		if(userDesignation.getDesignation().equals("ROLE_ADMIN")) {
			 session.setAttribute("userDesignationSession", userDesignation);
		 
		 
		 session.setAttribute("userDesignationSession", user);
			//session.setAttribute("sCategorylist",listOrderBeans);
				 session.setAttribute("sessionUser", user.getFirstName());
				 session.setAttribute("customer", user);
					session.setAttribute("loggedstatus", "login");
					session.setAttribute("customerId", user.getId());
					session.setAttribute("customerName", user.getFirstName());
		 try {
			response.sendRedirect("dashBoard");
			roleslist.add(userDesignation.getDesignation());
			return new CustomUserDetails(user,roleslist);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
	 }else
		{
			
			//user= (Users)objUser;
			session.setAttribute("userDesignationSession", user);
			//session.setAttribute("sCategorylist",listOrderBeans);
				 session.setAttribute("sessionUser", user.getFirstName());
				 session.setAttribute("customer", user);
					session.setAttribute("loggedstatus", "login");
					session.setAttribute("customerId", user.getId());
					session.setAttribute("customerName", user.getFirstName());
				 try {
					response.sendRedirect("index");
					roleslist.add(userDesignation.getDesignation());
					return new CustomUserDetails(user,roleslist);
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}  	
		
		return new CustomUserDetails(user,roleslist);
		
		
		/*if(null == user){
			throw new UsernameNotFoundException("No user present with username: "+username);
		}else{
			List<String> userRoles=userRolesRepository.findRoleByUserName(username);
			return new CustomUserDetails(user,userRoles);
		}
		}
		else
		{
			customer = customerRepository.findByUserName(username);
			if(null == customer){
				throw new UsernameNotFoundException("No user present with username: "+username);
			}else{
				List<String> roleslist =new ArrayList<String>();
				roleslist.add("ROLE_USER");
				
				return new CustomCustomerUserDetails(customer,roleslist);
			}
			*/
		
			
			
		
	}
		
}
