package com.charvikent.RealEstateAdvisors.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.charvikent.RealEstateAdvisors.model.UserIntrestedSites;
import com.charvikent.RealEstateAdvisors.model.VillagesBean;
import com.charvikent.RealEstateAdvisors.repositories.UserIntrestedSiteRepository;
import com.charvikent.RealEstateAdvisors.repositories.VillageRepository;

@Service("userIntrestedSitesService")
@Transactional
public class UserIntrestedSitesServiceImpl implements UserIntrestedSitesService {

	@Autowired
	private UserIntrestedSiteRepository userIntrestedSiteRepository;

	@Override
	public UserIntrestedSites findById(int id) {
		return userIntrestedSiteRepository.findById(id);
	}

	@Override
	public void saveUserIntrestedSites(UserIntrestedSites userIntrestedSites) {
		userIntrestedSiteRepository.save(userIntrestedSites);
	}

	@Override
	public void updateUserIntrestedSites(UserIntrestedSites userIntrestedSites) {
		saveUserIntrestedSites(userIntrestedSites);
	}

	@Override
	public void deleteUserIntrestedSitesById(int id) {
		userIntrestedSiteRepository.delete(id);
	}

	@Override
	public void deleteAllUserIntrestedSites() {
		userIntrestedSiteRepository.deleteAll();
	}

	@Override
	public List<UserIntrestedSites> findAllUserIntrestedSites() {
		return userIntrestedSiteRepository.findAll();
	}

	
	
	

}
