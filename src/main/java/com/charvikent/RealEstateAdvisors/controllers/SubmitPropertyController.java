package com.charvikent.RealEstateAdvisors.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.charvikent.RealEstateAdvisors.config.SendSMS;
import com.charvikent.RealEstateAdvisors.model.SubmitProperty;
import com.charvikent.RealEstateAdvisors.service.SubmitPropertyService;

@Controller 
public class SubmitPropertyController {
	
	@Autowired	private SubmitPropertyService submitPropertyService;
	@Autowired SendSMS sendSMS;
	@Autowired private Environment env;
	@Autowired public JavaMailSender emailSender;
	
	@RequestMapping("/submitProperty")
	public String createSubmitProperty(HttpServletRequest request,RedirectAttributes redir){		
		
		String submitPropertyDetails = env.getProperty("app.submitPropertyDetails");
		
		submitPropertyDetails = submitPropertyDetails.replaceAll("_buyerRbuilder_",request.getParameter("isBuyerrbuilder"));
		submitPropertyDetails = submitPropertyDetails.replaceAll("_email_", request.getParameter("email"));
		submitPropertyDetails = submitPropertyDetails.replaceAll("_phnNumber_", request.getParameter("number"));
		submitPropertyDetails = submitPropertyDetails.replaceAll("_expectPrice_", request.getParameter("expectprice"));
		submitPropertyDetails = submitPropertyDetails.replaceAll("_location_", request.getParameter("location"));
		submitPropertyDetails = submitPropertyDetails.replaceAll("_addInfo_", request.getParameter("addinfo"));
		
			
		SubmitProperty submitProperty = new SubmitProperty();
		submitProperty.setEmail(request.getParameter("email"));
		submitProperty.setPhoneNumber(request.getParameter("number"));
		submitProperty.setExpectPrice(request.getParameter("expectprice"));
		submitProperty.setLocation(request.getParameter("location"));
		submitProperty.setAdditionalInfo(request.getParameter("addinfo"));
		submitProperty.setBuyerRbuilder(request.getParameter("isBuyerrbuilder"));		
		
		submitPropertyService.createProperty(submitProperty);
		try {
			sendSMS.sendSMS(submitPropertyDetails,request.getParameter("number"));
			
			
			// Create a Simple MailMessage.
	        SimpleMailMessage message = new SimpleMailMessage();
	         
	        message.setTo(env.getProperty("app.toEmail"));
	        message.setSubject("********* Submitted Person Property Details ************");
	        message.setText(submitPropertyDetails);
	 
	        // Send Message!
	        this.emailSender.send(message);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		redir.addFlashAttribute("msg", "We Received your request, We will contact you soon. Thanking you.");
		redir.addFlashAttribute("cssMsg", "danger");
		return "redirect:sub";
	}

}