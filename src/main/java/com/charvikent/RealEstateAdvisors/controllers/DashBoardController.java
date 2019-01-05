package com.charvikent.RealEstateAdvisors.controllers;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.charvikent.RealEstateAdvisors.config.KptsUtil;
import com.charvikent.RealEstateAdvisors.config.SendSMS;
import com.charvikent.RealEstateAdvisors.repositories.UserIntrestedSiteRepository;
import com.charvikent.RealEstateAdvisors.service.UsersServiceImpl;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;


@Controller 
public class DashBoardController {
	private static final Logger LOGGER = LoggerFactory.getLogger(DashBoardController.class);
	@Autowired UsersServiceImpl userService;
	@Autowired SendSMS sendSMS;
	@Autowired UserIntrestedSiteRepository userIntrestedSiteRepository;
	//@Autowired OTPDetailsDao oTPDetailsDao;
	@Autowired KptsUtil kptsUtil;
	static 	String loginurl=""; 
	static boolean falg =true;
	String otpnumber ="";
	
	
	
	
	@RequestMapping("/dashBoard")
	public String home(HttpServletRequest request,HttpSession session)  {
		String json = null;
		ObjectMapper objectMapper = new ObjectMapper();
		
		try {
			json = objectMapper.writeValueAsString(userIntrestedSiteRepository.findAll());
			session.setAttribute("newNotification",json);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		return "dashBoard";
	}
	
	
	
	
	
	
}
