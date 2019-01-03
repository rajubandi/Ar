package com.charvikent.RealEstateAdvisors.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;
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
import com.charvikent.RealEstateAdvisors.repositories.UsersRepository;
import com.charvikent.RealEstateAdvisors.service.SiteService;
import com.charvikent.RealEstateAdvisors.service.UserIntrestedSitesServiceImpl;
import com.charvikent.RealEstateAdvisors.service.VillageService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller 
public class PlotsController {

	@Autowired UserIntrestedSitesServiceImpl userIntrestedSitesServiceImpl;
	@Autowired UsersRepository usersRepository;
	@Autowired VillageService villageService;
	@Autowired SiteService siteService;
	@Autowired SiteRepository siteRepository;
	@Autowired SendingMail sendingMail;
	@Autowired SendSMS sendSMS;
	@Autowired private Environment env;
	
	
	@GetMapping("/plots")
	public String home(ModelMap modal,HttpServletRequest request) {
		//Map<Integer, String> villagesListMap = new LinkedHashMap<Integer, String>();
		ObjectMapper objectMapper = null;
		ObjectMapper objectMapper1 = null;
		String json = null;
		String json1 = null;
		List<Site> siteList = siteRepository.findAll(); 
		long totalSiteCount = siteRepository.CountSite();
		
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
			request.setAttribute("villagesListMap", json);
			request.setAttribute("siteList", json1);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "plots";
	}

	@PostMapping("/userIntrestedSite")
	public @ResponseBody String intrestedSite(@RequestParam("id") String id, HttpSession session,HttpServletRequest request) throws IOException, JSONException {
		//String siteId =(String) request.getAttribute("id");
		Users customer=(Users) session.getAttribute("customer");
		Users admin	= usersRepository.findByDesignation("1");
		UserIntrestedSites uis = new UserIntrestedSites();
		 JSONObject resp = new JSONObject();
		 
		
		uis.setUserId(customer.getId());
		uis.setSiteId(Integer.parseInt(id));
		Site customerIntrestedSite = siteRepository.findSiteById(Integer.parseInt(id));
		userIntrestedSitesServiceImpl.saveUserIntrestedSites(uis);
		//sendingMail.sendSalesRequestEmailWithattachment(customer.getEmail());
		String iamIntrestedMessage=env.getProperty("app.iamIntrestedMessage");
		String adminNotification=env.getProperty("app.customerIntrestedMsgToAdmin");
		
		adminNotification=adminNotification.replaceAll("_customerName_",customer.getFirstName()+""+ customer.getLastName());
		adminNotification=adminNotification.replaceAll("_mobileNumber_", customer.getMobileNumber());
		adminNotification=adminNotification.replaceAll("_listingId_", customerIntrestedSite.getListingId());
		/*adminNotification.replaceAll("_customerName_", replacement);
		adminNotification.replaceAll("_customerName_", replacement);
		adminNotification.replaceAll("_customerName_", replacement);*/
		resp.put("status", true);
		sendSMS.sendSMS(iamIntrestedMessage,customer.getMobileNumber());
		sendSMS.sendSMS(adminNotification,admin.getMobileNumber());
		 return resp.toString();
	}
	
	@PostMapping("/siteFilterByVillage")
	public @ResponseBody String siteFilterByVillage(@RequestParam(value="villageArry[]", required = false) int[] villageArry,
													@RequestParam(value="facingArry[]", required = false) String[] facingArry,
													@RequestParam(value="protoTypeArry[]", required = false) String[] protoTypeArry,
													@RequestParam(value="roadFacingArry[]", required = false) String[] roadFacingArry,
													@RequestParam(value="roadDimensionsArry[]", required = false) String[] roadDimensionsArry,
													
													HttpSession session,HttpServletRequest request) throws IOException {
		 String json=null;
		List<Integer> vlist = new ArrayList<>();
		List<String> facingList = new ArrayList<>();
		List<String> protoTypeList = new ArrayList<>();
		List<String> roadFacingArrylist = new ArrayList<>();
		List<String> roadDimensionsArryList = new ArrayList<>();
		if(villageArry !=null) {
			for(int villageId: villageArry) {
				
				vlist.add(villageId);
				
			}
		}
		if(facingArry !=null) {
			for(String facing: facingArry) {
						
				facingList.add(facing);
						
					}
		}
		if(protoTypeArry !=null) {
			for(String protoType: protoTypeArry) {
				
				protoTypeList.add(protoType);
				
			}
		}
		if(roadFacingArry !=null) {
			for(String protoType: roadFacingArry) {
				
				roadFacingArrylist.add(protoType);
				
			}
		}
		if(roadDimensionsArry !=null) {
			for(String protoType: roadDimensionsArry) {
				
				roadDimensionsArryList.add(protoType);
				
			}
		}
		List<Site> siteList = siteService.findByVillageId(vlist,facingList,protoTypeList,roadFacingArrylist,roadDimensionsArryList);
		ObjectMapper objectMapper = new ObjectMapper();
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
