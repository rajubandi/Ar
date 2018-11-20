package com.charvikent.RealEstateAdvisors.service;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import com.charvikent.RealEstateAdvisors.model.VillagesBeaUserIntrestedSites;

@Service
public interface VillageService  {

	
	VillagesBeaUserIntrestedSites findById(int id);

	VillagesBeaUserIntrestedSites findByVName(String vName);

	void saveVillagesBean(VillagesBeaUserIntrestedSites village);

	void updateVillagesBean(VillagesBeaUserIntrestedSites village);

	void deleteVillagesBeanById(int id);

	void deleteAllVillagesBean();

	List<VillagesBeaUserIntrestedSites> findAllVillagesBean();

	boolean isVillagesBeanExist(VillagesBeaUserIntrestedSites village);

}
