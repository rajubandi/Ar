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
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.charvikent.RealEstateAdvisors.config.SendSMS;
import com.charvikent.RealEstateAdvisors.config.SendingMail;
import com.charvikent.RealEstateAdvisors.model.PriceTrends;
import com.charvikent.RealEstateAdvisors.model.VillagesBean;
import com.charvikent.RealEstateAdvisors.repositories.PriceTrendsRepository;
import com.charvikent.RealEstateAdvisors.repositories.SiteRepository;
import com.charvikent.RealEstateAdvisors.repositories.UserIntrestedSiteRepository;
import com.charvikent.RealEstateAdvisors.repositories.UsersRepository;
import com.charvikent.RealEstateAdvisors.service.VillageService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller 
public class PriceTrendController {
	@Autowired UserIntrestedSiteRepository userIntrestedSiteRepository;
	@Autowired UsersRepository usersRepository;
	@Autowired VillageService villageService;
	@Autowired SiteRepository siteRepository;
	@Autowired PriceTrendsRepository priceTrendsRepository ;
	
	@Autowired SendingMail sendingMail;
	@Autowired SendSMS sendSMS;
	@Autowired private Environment env;
	
	
	@GetMapping("/adminPriceTrend")
	public String home(@ModelAttribute("priceTrend") PriceTrends priceTrends,ModelMap modal,HttpServletRequest request) {
		Map<Integer, String> villagesListMap = new LinkedHashMap<Integer, String>();
		//ListIterator<VillagesBean> litr = null;
		ObjectMapper objectMapper = null;
		String json = null;
		List<VillagesBean> villagesList =villageService.findAllVillagesBean();
		List<PriceTrends> priceTrendsList = priceTrendsRepository.findAll();
		//litr = villagesList.listIterator();
		for(VillagesBean villageBean: villagesList) {
			 
			  villagesListMap.put(new Integer(villageBean.getId()),villageBean.getvName());
		 }
		request.setAttribute("villagesList",villagesListMap);
		objectMapper = new ObjectMapper();
		try {
			json= objectMapper.writeValueAsString(priceTrendsList);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("priceTrendsList", json);
		// model.addAttribute("saveSite",new Site());
		return "adminPriceTrend";
	}

	@PostMapping("/savePriceTrend")
	public String savePriceTrend(@ModelAttribute("priceTrend") PriceTrends priceTrend,RedirectAttributes redir) {
		
		
		if(priceTrend != null) {
			priceTrendsRepository.save(priceTrend);
		redir.addFlashAttribute("msg", "Price Trend added successfully");
		 redir.addFlashAttribute("cssMsg", "success");
		 return  "redirect:adminPriceTrend";
		}else {
			
			redir.addFlashAttribute("msg", "Price Trend doesn't added");
			redir.addFlashAttribute("cssMsg", "danger");
			return  "redirect:adminPriceTrend";
		}
		 
		// return "redirect:adminPriceTrend";
	}
	
	@RequestMapping("/pricetrends")
	public String pricetrends(HttpServletRequest request) {
		ObjectMapper objectMapper = null;
		String json = null;
		String json1 = null;
		List<PriceTrends> priceTrendsList = priceTrendsRepository.findAll();
		List<Object> vb = siteRepository.countOfSitesByVillage();
		objectMapper = new ObjectMapper();
		try {
			json= objectMapper.writeValueAsString(priceTrendsList);
			json1= objectMapper.writeValueAsString(vb);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("villagesListMap", json1);
		request.setAttribute("priceTrendsList", json);
		return "pricetrends"; 
	}
	
	
}
