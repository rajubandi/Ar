package com.charvikent.RealEstateAdvisors.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
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
import com.charvikent.RealEstateAdvisors.repositories.UserIntrestedSiteRepository;
import com.charvikent.RealEstateAdvisors.repositories.UsersRepository;
import com.charvikent.RealEstateAdvisors.service.SiteService;
import com.charvikent.RealEstateAdvisors.service.UserIntrestedSitesServiceImpl;
import com.charvikent.RealEstateAdvisors.service.VillageService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller 
public class LayoutsController {
	@Autowired UserIntrestedSiteRepository userIntrestedSiteRepository;
	@Autowired UserIntrestedSitesServiceImpl userIntrestedSitesServiceImpl;
	@Autowired UsersRepository usersRepository;
	@Autowired VillageService villageService;
	@Autowired SiteService siteService;
	@Autowired SiteRepository siteRepository;
	@Autowired SendingMail sendingMail;
	@Autowired SendSMS sendSMS;
	@Autowired private Environment env;
	
	
	@GetMapping("/layouts")
	public String home(ModelMap modal,HttpServletRequest request) {
		//Map<Integer, String> villagesListMap = new LinkedHashMap<Integer, String>();
		ObjectMapper objectMapper = null;
		ObjectMapper objectMapper1 = null;
		ObjectMapper objectMapper2 = null;
		String json = null;
		String json1 = null;
		String json2 = null;
		List<Site> siteList = siteRepository.findAll(); 
		long totalSiteCount = siteRepository.CountSite();
		List<Integer> intrestedSiteIds =null;
		Set<Integer> removeDuplicateIntrestedSiteIds = new HashSet();
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		
		if (!(auth instanceof AnonymousAuthenticationToken)) {
		    Users currentUser = (Users)auth.getPrincipal();
		    if(!(currentUser.getId() == 0)){
		    	
		     intrestedSiteIds=userIntrestedSiteRepository.useIntrestedSiteIds(currentUser.getId());
		     removeDuplicateIntrestedSiteIds.addAll(intrestedSiteIds);
		    	//System.out.println(removeDuplicateIntrestedSiteIds);
		    }
		    
		}
		objectMapper2  = new ObjectMapper();
		
		//if(objuserBean)
		//String id=String.valueOf(objuserBean.getId());
		
		List<Object> vb = siteRepository.countOfSitesByVillage();
		List<VillagesBean> villagesList =villageService.findAllVillagesBean();
		/*for(VillagesBean villageBean: villagesList) {
			 
			  villagesListMap.put(new Integer(villageBean.getId()),villageBean.getvName());
		 }*/
		objectMapper = new ObjectMapper();
		objectMapper1 = new ObjectMapper();
		try {
			json= objectMapper.writeValueAsString(vb);
			json1= objectMapper1.writeValueAsString(siteList);
			json2 = objectMapper2.writeValueAsString(removeDuplicateIntrestedSiteIds);
			request.setAttribute("villagesListMap", json);
			request.setAttribute("siteList", json1);
			request.setAttribute("intrestedSites", json2);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "layouts";
	}

	
}
