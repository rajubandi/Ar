package com.charvikent.RealEstateAdvisors.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller 
public class HomeController {

	@GetMapping("/dashboard")
	public String home(Model model) {
		
		return "dashboard";
	}
	
	
	
	
	
	
}
