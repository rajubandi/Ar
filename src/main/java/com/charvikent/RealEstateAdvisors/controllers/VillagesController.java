package com.charvikent.RealEstateAdvisors.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.charvikent.RealEstateAdvisors.model.VillagesBean;
import com.charvikent.RealEstateAdvisors.service.VillageService;

@Controller 
public class VillagesController {

	@Autowired VillageService villageService;
	/*@GetMapping("/")
	public String home(ModelMap modal) {
		modal.addAttribute("title","CRUD Example");
		return "index";
	}*/

	@GetMapping("/addVillage")
	public String addVillage(@ModelAttribute("village")VillagesBean village, Model model) {
		//modal.addAttribute("title","CRUD Example");
		return "addVillage";
	}

	@PostMapping("/saveVillage")
	
	public String partialHandler(@ModelAttribute("village")VillagesBean village ) {
		
		 villageService.saveVillagesBean(village);
		 System.out.println("%%%%%%%%%%%%@@@@@@@"+village);
		 
		 return "addVillage";
	}
}
