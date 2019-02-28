package com.charvikent.RealEstateAdvisors.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.mail.MailException;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class SimpleEmailExampleController {
 
    @Autowired public JavaMailSender emailSender;
    @Autowired private Environment env;
 
    @RequestMapping(value="/sendSimpleEmail", method = RequestMethod.POST)
    public String sendSimpleEmail(HttpServletRequest request, RedirectAttributes redir  ) {
    			
    	String contactDetails = env.getProperty("app.contactUsDetails");
    	contactDetails = contactDetails.replaceAll("_contactPersonName_",request.getParameter("name"));
    	contactDetails = contactDetails.replaceAll("_email_", request.getParameter("email"));
    	contactDetails = contactDetails.replaceAll("_phnNumber_", request.getParameter("number"));
    	contactDetails = contactDetails.replaceAll("_message_", request.getParameter("message"));
    	
        try {
        	
			// Create a Simple MailMessage.
			SimpleMailMessage message = new SimpleMailMessage();
			 
			message.setTo(env.getProperty("app.toEmail"));
			message.setSubject("********* Contacted Person Details ************");
			message.setText(contactDetails);
 
			// Send Message!
			this.emailSender.send(message);
		} catch (MailException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        redir.addFlashAttribute("msg", "We Received your request, We will contact you soon. Thanking you.");
		redir.addFlashAttribute("cssMsg", "danger");
        return "redirect:contact";
    } 
}