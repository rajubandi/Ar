package com.charvikent.RealEstateAdvisors.service;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import com.charvikent.RealEstateAdvisors.model.VillagesBean;

@Service
public interface VillageService  {

	
	VillagesBean findById(int id);

	VillagesBean findByVName(String vName);

	void saveVillagesBean(VillagesBean village);

	void updateVillagesBean(VillagesBean village);

	void deleteVillagesBeanById(int id);

	void deleteAllVillagesBean();

	List<VillagesBean> findAllVillagesBean();

	boolean isVillagesBeanExist(VillagesBean village);

}
