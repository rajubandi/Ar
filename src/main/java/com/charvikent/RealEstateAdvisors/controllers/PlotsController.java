package com.charvikent.RealEstateAdvisors.controllers;

import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.charvikent.RealEstateAdvisors.config.SendSMS;
import com.charvikent.RealEstateAdvisors.config.SendingMail;
import com.charvikent.RealEstateAdvisors.model.Site;
import com.charvikent.RealEstateAdvisors.model.UserIntrestedSites;
import com.charvikent.RealEstateAdvisors.model.Users;
import com.charvikent.RealEstateAdvisors.model.VillagesBean;
import com.charvikent.RealEstateAdvisors.repositories.SiteRepository;
import com.charvikent.RealEstateAdvisors.service.SiteService;
import com.charvikent.RealEstateAdvisors.service.UserIntrestedSitesServiceImpl;
import com.charvikent.RealEstateAdvisors.service.VillageService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller 
public class PlotsController {

	@Autowired UserIntrestedSitesServiceImpl userIntrestedSitesServiceImpl;
	@Autowired VillageService villageService;
	@Autowired SiteService siteService;
	@Autowired SiteRepository siteRepository;
	@Autowired SendingMail sendingMail;
	@Autowired SendSMS sendSMS;
	@Autowired private Environment env;
	
	
	@GetMapping("/plots")
	public String home(ModelMap modal,HttpServletRequest request) {
		Map<Integer, String> villagesListMap = new LinkedHashMap<Integer, String>();
		ObjectMapper objectMapper = null;
		ObjectMapper objectMapper1 = null;
		String json = null;
		String json1 = null;
		List<Site> siteList = siteRepository.findAll(); 
		List<VillagesBean> villagesList =villageService.findAllVillagesBean();
		for(VillagesBean villageBean: villagesList) {
			 
			  villagesListMap.put(new Integer(villageBean.getId()),villageBean.getvName());
		 }
		objectMapper = new ObjectMapper();
		try {
			json= objectMapper.writeValueAsString(villagesListMap);
			json1= objectMapper.writeValueAsString(siteList);
			request.setAttribute("villagesListMap", json);
			request.setAttribute("siteList", json1);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "plots";
	}

	@PostMapping("/userIntrestedSite")
	public @ResponseBody String intrestedSite( HttpSession session,HttpServletRequest request) throws IOException {
		String siteId =(String) request.getAttribute("id");
		Users customer=(Users) session.getAttribute("customer");
		UserIntrestedSites uis = new UserIntrestedSites();
		
		uis.setUserId(customer.getId());
		uis.setSiteId(Integer.parseInt(siteId));
		userIntrestedSitesServiceImpl.saveUserIntrestedSites(uis);
		//sendingMail.sendSalesRequestEmailWithattachment(customer.getEmail());
		String iamIntrestedMessage=env.getProperty("app.iamIntrestedMessage");
		sendSMS.sendSMS(iamIntrestedMessage,customer.getMobileNumber());
		 return "";
	}
}
