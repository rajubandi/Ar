package com.charvikent.RealEstateAdvisors.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.env.Environment;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class SimpleEmailExampleController {
 
    @Autowired public JavaMailSender emailSender;
    @Autowired private Environment env;
 
    @RequestMapping("/sendSimpleEmail")
    public String sendSimpleEmail(HttpServletRequest request  ) {
    			
    	String contactDetails = env.getProperty("app.contactUsDetails");
    	
    	contactDetails = contactDetails.replaceAll("_contactPersonName_",request.getParameter("name"));
    	contactDetails = contactDetails.replaceAll("_email_", request.getParameter("mail"));
    	contactDetails = contactDetails.replaceAll("_phnNumber_", request.getParameter("number"));
    	contactDetails = contactDetails.replaceAll("_message_", request.getParameter("message"));
    	
        // Create a Simple MailMessage.
        SimpleMailMessage message = new SimpleMailMessage();
         
        message.setTo(env.getProperty("app.toEmail"));
        message.setSubject("********* Contacted Person Details ************");
        message.setText(contactDetails);
 
        // Send Message!
        this.emailSender.send(message);
 
        return "contact";
    } 
}