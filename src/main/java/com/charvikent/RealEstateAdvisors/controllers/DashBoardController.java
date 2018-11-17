package com.charvikent.RealEstateAdvisors.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.charvikent.RealEstateAdvisors.config.KptsUtil;
import com.charvikent.RealEstateAdvisors.config.SendSMS;
import com.charvikent.RealEstateAdvisors.service.UsersServiceImpl;


@Controller 
public class DashBoardController {
	private static final Logger LOGGER = LoggerFactory.getLogger(DashBoardController.class);
	@Autowired UsersServiceImpl userService;
	@Autowired SendSMS sendSMS;
	//@Autowired OTPDetailsDao oTPDetailsDao;
	@Autowired KptsUtil kptsUtil;
	static 	String loginurl=""; 
	static boolean falg =true;
	String otpnumber ="";
	
	
	
	
	@RequestMapping("/dashBoard")
	public String home() {
		
		return "dashBoard";
	}
	
	
	
	
	
	
}
