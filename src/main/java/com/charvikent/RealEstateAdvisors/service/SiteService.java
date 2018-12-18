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



	List<Site> findByVillageId(List<Integer> vlist,List<String> faceList,List<String> protoTypeList,
							   List<String> roadFacingArrylist,List<String> roadDimensionsArryList);

	int totalSiteCount();


	//void updateVillagesBean(VillagesBean village);

	//void deleteVillagesBeanById(int id);

	//void deleteAllVillagesBean();

	//List<VillagesBean> findAllVillagesBean();

	//boolean isVillagesBeanExist(VillagesBean village);

}
