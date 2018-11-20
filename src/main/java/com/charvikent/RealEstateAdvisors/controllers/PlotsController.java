package com.charvikent.RealEstateAdvisors.controllers;

import java.io.IOException;

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
import com.charvikent.RealEstateAdvisors.model.UserIntrestedSites;
import com.charvikent.RealEstateAdvisors.model.Users;
import com.charvikent.RealEstateAdvisors.service.UserIntrestedSitesServiceImpl;

@Controller 
public class PlotsController {

	@Autowired UserIntrestedSitesServiceImpl userIntrestedSitesServiceImpl;
	@Autowired SendingMail sendingMail;
	@Autowired SendSMS sendSMS;
	@Autowired private Environment env;
	@GetMapping("/plots")
	public String home(ModelMap modal) {
		//modal.addAttribute("title","CRUD Example");
		return "plots";
	}

	@PostMapping("/userIntrestedSite")
	public @ResponseBody String intrestedSite(@RequestParam("id") String siteId , HttpSession session,HttpServletRequest request) throws IOException {
		//String siteId =(String) request.getAttribute("id");
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
