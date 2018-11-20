package com.charvikent.RealEstateAdvisors.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.charvikent.RealEstateAdvisors.model.Site;
import com.charvikent.RealEstateAdvisors.model.VillagesBeaUserIntrestedSites;

@Service
public interface SiteService  {

	
	VillagesBeaUserIntrestedSites findByVillageId(int id);

	//VillagesBean findByVName(String vName);

	void saveSite(Site site);

	//void updateVillagesBean(VillagesBean village);

	//void deleteVillagesBeanById(int id);

	//void deleteAllVillagesBean();

	//List<VillagesBean> findAllVillagesBean();

	//boolean isVillagesBeanExist(VillagesBean village);

}
