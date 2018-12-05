package com.charvikent.RealEstateAdvisors.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.charvikent.RealEstateAdvisors.model.Site;
import com.charvikent.RealEstateAdvisors.model.VillagesBean;

@Service
public interface SiteService  {

	
	VillagesBean findByVillageId(int id);

	//VillagesBean findByVName(String vName);

	void saveSite(Site site);

	List<Site> findByVillageId(String villageIdList);

	//void updateVillagesBean(VillagesBean village);

	//void deleteVillagesBeanById(int id);

	//void deleteAllVillagesBean();

	//List<VillagesBean> findAllVillagesBean();

	//boolean isVillagesBeanExist(VillagesBean village);

}
