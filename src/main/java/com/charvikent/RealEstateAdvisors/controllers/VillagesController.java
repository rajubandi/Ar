package com.charvikent.RealEstateAdvisors.controllers;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.charvikent.RealEstateAdvisors.model.VillagesBean;
import com.charvikent.RealEstateAdvisors.repositories.VillageRepository;
import com.charvikent.RealEstateAdvisors.service.VillageService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller 
public class VillagesController {

	@Autowired VillageService villageService;
	@Autowired VillageRepository villageRepository;
	/*@GetMapping("/")
	public String home(ModelMap modal) {
		modal.addAttribute("title","CRUD Example");
		return "index";
	}*/

	@GetMapping("/addVillage")
	public String addVillage(@ModelAttribute("village")VillagesBean village, Model model,HttpServletRequest request) {
		String json = null;
		ObjectMapper objectMapper = new ObjectMapper();
		try {
			json = objectMapper.writeValueAsString(villageRepository.findAll());
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("villagesList",json );
		//modal.addAttribute("title","CRUD Example");
		return "addVillage";
	}

	@PostMapping("/saveVillage")
	public String partialHandler(@ModelAttribute("village")VillagesBean village,RedirectAttributes redir ) {
		
		if(village != null && village.getId() == 0) {
		 //villageService.saveVillagesBean(village);
		 villageRepository.saveAndFlush(village);
		 redir.addFlashAttribute("msg", "Village added successfully");
		 redir.addFlashAttribute("cssMsg", "success");
		 return "redirect:addVillage";
		}else {
			villageService.updateVillagesBean(village);
			redir.addFlashAttribute("msg", "Village updated successfully");
			redir.addFlashAttribute("cssMsg", "danger");
			return "redirect:addVillage";
		}
		 //return "addVillage";
	}
}
