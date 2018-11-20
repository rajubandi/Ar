package com.charvikent.RealEstateAdvisors.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.charvikent.RealEstateAdvisors.model.UserIntrestedSites;

@Service
public interface UserIntrestedSitesService  {

	
	UserIntrestedSites findById(int id);

	//UserIntrestedSites findByVName(String vName);

	void saveUserIntrestedSites(UserIntrestedSites village);

	void updateUserIntrestedSites(UserIntrestedSites village);

	void deleteUserIntrestedSitesById(int id);

	void deleteAllUserIntrestedSites();

	List<UserIntrestedSites> findAllUserIntrestedSites();

	//boolean isVillagesBeanExist(UserIntrestedSites village);

}
