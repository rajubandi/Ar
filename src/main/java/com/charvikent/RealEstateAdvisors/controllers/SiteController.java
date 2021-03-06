package com.charvikent.RealEstateAdvisors.controllers;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.charvikent.RealEstateAdvisors.model.Site;
import com.charvikent.RealEstateAdvisors.model.VillagesBean;
import com.charvikent.RealEstateAdvisors.repositories.SiteRepository;
import com.charvikent.RealEstateAdvisors.repositories.VillageRepository;
import com.charvikent.RealEstateAdvisors.service.SiteService;
import com.charvikent.RealEstateAdvisors.service.VillageService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller 
public class SiteController {

	@Autowired VillageService villageService;
	@Autowired VillageRepository villageRepository;
	@Autowired SiteService siteService;
	@Autowired SiteRepository siteRepository;
	@GetMapping("/site")
	public String home(@ModelAttribute("addSite") Site site,HttpServletRequest request) throws JsonProcessingException {
		Map<Integer, String> villagesListMap = new LinkedHashMap<Integer, String>();
		ListIterator<VillagesBean> litr = null;
		ObjectMapper objectMapper = null;
		String json = null;
		List<VillagesBean> villagesList =villageService.findAllVillagesBean();
		List<Site> siteList = siteRepository.findAll();
		//litr = villagesList.listIterator();
		for(VillagesBean villageBean: villagesList) {
			 
			  villagesListMap.put(new Integer(villageBean.getId()),villageBean.getvName());
		 }
		request.setAttribute("villagesList",villagesListMap);
		objectMapper = new ObjectMapper();
		json= objectMapper.writeValueAsString(siteList);
		request.setAttribute("siteList", json);
		// model.addAttribute("saveSite",new Site());
		return "site";
	}
	
	@PostMapping("/saveSite")
	public String partialHandler(@ModelAttribute("addSite") Site site,RedirectAttributes redir) {
		
		//VillagesBean v = villageRepository.findById(Integer.parseInt(site.getvId()));
		//site.setVillageId(v);
		if(site != null) {
			siteService.saveSite(site);;
		redir.addFlashAttribute("msg", "Site added successfully");
		 redir.addFlashAttribute("cssMsg", "success");
		 return  "redirect:site";
		}else {
			
			redir.addFlashAttribute("msg", "Site doesn't added");
			redir.addFlashAttribute("cssMsg", "danger");
			return  "redirect:site";
		}
		 //return "redirect:site";
	}

	@PostMapping("/getVillages")
	public  @ResponseBody String  getVillages(HttpServletRequest request) {
		Map<Integer, String> villagesListMap = new LinkedHashMap<Integer, String>();
		ObjectMapper objectMapper = null;
		String json = null;
		List<VillagesBean> villagesList =villageService.findAllVillagesBean();
		//litr = villagesList.listIterator();
		for(VillagesBean villageBean: villagesList) {
			 
			  villagesListMap.put(new Integer(villageBean.getId()),villageBean.getvName());
		 }
		objectMapper = new ObjectMapper();
		try {
			json= objectMapper.writeValueAsString(villagesListMap);
			request.setAttribute("villagesListMap", json);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return json;
	}
	
	@PostMapping("/getAllSites")
	public  @ResponseBody String  getAllSites(HttpServletRequest request) {
		ObjectMapper objectMapper = null;
		String json = null;
		List<Site> siteList = siteRepository.findAll(); 
		
		objectMapper = new ObjectMapper();
		try {
			json= objectMapper.writeValueAsString(siteList);
			request.setAttribute("siteList", json);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return json;
	}
	
}
