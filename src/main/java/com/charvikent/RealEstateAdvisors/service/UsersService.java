package com.charvikent.RealEstateAdvisors.service;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface UsersService  {

	
	List<String> findRoleByUserName(String userName);

	//VillagesBean findByVName(String vName);

	//void saveSite(Site site);

	//void updateVillagesBean(VillagesBean village);

	//void deleteVillagesBeanById(int id);

	//void deleteAllVillagesBean();

	//List<VillagesBean> findAllVillagesBean();

	//boolean isVillagesBeanExist(VillagesBean village);

}
