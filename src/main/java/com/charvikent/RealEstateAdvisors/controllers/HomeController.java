package com.charvikent.RealEstateAdvisors.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.charvikent.RealEstateAdvisors.config.KptsUtil;
import com.charvikent.RealEstateAdvisors.config.SendSMS;
import com.charvikent.RealEstateAdvisors.model.Users;
import com.charvikent.RealEstateAdvisors.service.UsersServiceImpl;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;


@Controller 
public class HomeController {
	private static final Logger LOGGER = LoggerFactory.getLogger(HomeController.class);
	@Autowired UsersServiceImpl userService;
	@Autowired SendSMS sendSMS;
	@Autowired private Environment env;
	//@Autowired OTPDetailsDao oTPDetailsDao;
	@Autowired KptsUtil kptsUtil;
	static 	String loginurl=""; 
	static boolean falg =true;
	String otpnumber ="";
	
	@RequestMapping("/admin")
	public String customlogin(Model model) {	
		LOGGER.debug("Calling Admin Login page index::{} at controller");
		 /*Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		 if (null != auth){    
		        return "redirect:dashboard";
		    }
		 else*/
		return "login";
	}
	
	@SuppressWarnings("unused")
	@RequestMapping("/userlogin")
	public String userLogin(Model model) {
		LOGGER.debug("Calling User Login page index::{} at controller");
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		return "userlogin";
	}
	
	@RequestMapping("/login")
	public String loginView(Model model) {
		LOGGER.debug("Calling Login page index::{} at controller");
		System.out.println("login called at /login page");
		//User objuserBean = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		 //userService.setLoginRecord(objuserBean.getId(),"login");

		return "login";
	}
	
	@RequestMapping("/logout")
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
		
		LOGGER.debug("Calling Logout page index::{} at controller");
		
		Users objuserBean = (Users)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    
	   // userService.setLoginRecord(objuserBean.getId(),"logout");
	    
	   // userService.setLoginRecord(objuserBean.getId(),"logout");
	    if (null != auth){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    SecurityContextHolder.clearContext();
	    if(null != auth) {
	    	SecurityContextHolder.getContext().setAuthentication(null);
	    }
	    System.out.println("Called Logout");
	    return "redirect:/login";//You can redirect wherever you want, but generally it's a good practice to show login screen again.
	}
	
	/*@RequestMapping("/403")
	public String failureLogin(Model model) {
		return "403";
	}*/
	@RequestMapping("/customerlogin")
	public String ShowCustomerLoginPage(Model model,HttpServletRequest request) {
		LOGGER.debug("Calling Customer Login page index::{} at controller");
		if(falg)
		loginurl =request.getHeader("referer");
		
		return "customerlogin";
	}
	
	@PostMapping("/customerlogin")
	public String validateCustomerLogin(Model model,HttpServletRequest request,HttpSession session,RedirectAttributes redir) throws JsonProcessingException {
		
		LOGGER.debug("Validating Customer Login page index::{} at controller");
		String loginid=request.getParameter("username");
		String password=request.getParameter("password");
		
		Users customer =userService.validateCustomer(loginid,password);
		String referalUrl=request.getHeader("referer");
		
		if(null ==customer)
		{
			System.out.println("Customer does not exists"+referalUrl);
			falg=false;
			redir.addFlashAttribute("msg", "Invalid Details");
			redir.addFlashAttribute("cssMsg", "danger");
			return "redirect:customerlogin";
		}
		else if(null==loginurl)
				{
			session.setAttribute("customer", customer);
			session.setAttribute("loggedstatus", "login");
			session.setAttribute("customerId", customer.getId());
			session.setAttribute("customerName", customer.getFirstName());
			return "redirect:/";
			
				}
		else
			
		{
		session.setAttribute("customer", customer);
		session.setAttribute("loggedstatus", "login");
		session.setAttribute("customerId", customer.getId());
		session.setAttribute("customerName", customer.getFirstName());
			System.out.println("()()()()()()()()()()("+loginurl);
			return "redirect:"+ loginurl;
		}
		
	}
	@RequestMapping("/")
	public String ShowAbhee(Model model,HttpServletRequest request,HttpSession session) throws JSONException, JsonProcessingException 
	{
		LOGGER.debug("Calling Abhee site Main page at controller");
		//List<Category> listOrderBeans = categoryDao.getCategoryNames();
		//model.addAttribute("categories", listOrderBeans);
		ObjectMapper objectMapper = new ObjectMapper();
		//String sJson = objectMapper.writeValueAsString(listOrderBeans);	
		//request.setAttribute("allOrders1", sJson);
		String referalUrl=request.getHeader("referer");
		System.out.println(referalUrl);
		return "index";
	}
	
	
	@RequestMapping("/signout")
	public String SignOut(Model model,HttpServletRequest request,HttpSession session) throws JSONException, JsonProcessingException {
		LOGGER.debug("Calling Signout page at controller");
		String referalUrl=request.getHeader("referer");
		System.out.println(referalUrl);
		
		falg=true;
		
		session.invalidate();
		 
		return "redirect:"+ referalUrl;
	}
	
	
	@RequestMapping("/dashboard")
	public String home() {
		
		return "dashboard";
	}
	
	
	
	
	
	
}
