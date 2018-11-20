package com.charvikent.RealEstateAdvisors.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.charvikent.RealEstateAdvisors.model.VillagesBean;
import com.charvikent.RealEstateAdvisors.service.VillageService;

@Controller 
public class PlotsController {

	//@Autowired VillageService villageService;
	@GetMapping("/plots")
	public String home(ModelMap modal) {
		//modal.addAttribute("title","CRUD Example");
		return "plots";
	}

	
}
