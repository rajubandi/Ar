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
public class VillagesController {

	@Autowired VillageService villageService;
	@GetMapping("/")
	public String home(ModelMap modal) {
		modal.addAttribute("title","CRUD Example");
		return "index";
	}

	@PostMapping("/saveVillage")
	
	public ResponseEntity partialHandler(@RequestBody VillagesBean village) {
		
		 villageService.saveVillagesBean(village);
		 System.out.println("%%%%%%%%%%%%@@@@@@@"+village);
		 
		 return new ResponseEntity(HttpStatus.OK);
	}
}
