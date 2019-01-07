package com.charvikent.RealEstateAdvisors.controllers;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.charvikent.RealEstateAdvisors.config.SendSMS;
import com.charvikent.RealEstateAdvisors.config.SendingMail;
import com.charvikent.RealEstateAdvisors.model.PriceTrends;
import com.charvikent.RealEstateAdvisors.model.VillagesBean;
import com.charvikent.RealEstateAdvisors.repositories.SiteRepository;
import com.charvikent.RealEstateAdvisors.repositories.UserIntrestedSiteRepository;
import com.charvikent.RealEstateAdvisors.repositories.UsersRepository;
import com.charvikent.RealEstateAdvisors.service.VillageService;

@Controller 
public class PriceTrendController {
	@Autowired UserIntrestedSiteRepository userIntrestedSiteRepository;
	@Autowired UsersRepository usersRepository;
	@Autowired VillageService villageService;
	@Autowired SiteRepository siteRepository;
	@Autowired SendingMail sendingMail;
	@Autowired SendSMS sendSMS;
	@Autowired private Environment env;
	
	
	@GetMapping("/adminPriceTrend")
	public String home(@ModelAttribute("priceTrend") PriceTrends priceTrends,ModelMap modal,HttpServletRequest request) {
		Map<Integer, String> villagesListMap = new LinkedHashMap<Integer, String>();
		//ListIterator<VillagesBean> litr = null;
		//ObjectMapper objectMapper = null;
		//String json = null;
		List<VillagesBean> villagesList =villageService.findAllVillagesBean();
		//List<Site> siteList = siteRepository.findAll();
		//litr = villagesList.listIterator();
		for(VillagesBean villageBean: villagesList) {
			 
			  villagesListMap.put(new Integer(villageBean.getId()),villageBean.getvName());
		 }
		request.setAttribute("villagesList",villagesListMap);
		//objectMapper = new ObjectMapper();
		//json= objectMapper.writeValueAsString(siteList);
		//request.setAttribute("siteList", json);
		// model.addAttribute("saveSite",new Site());
		return "adminPriceTrend";
	}

	
	
}
