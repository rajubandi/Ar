package com.charvikent.RealEstateAdvisors.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.charvikent.RealEstateAdvisors.model.VillagesBean;
import com.charvikent.RealEstateAdvisors.repositories.VillageRepository;

@Service("villageService")
@Transactional
public class VillageServiceImpl implements VillageService {

	@Autowired
	private VillageRepository villageRepository;
	
	@Override
	public VillagesBean findById(int id) {
		// TODO Auto-generated method stub
		return villageRepository.findById(id);
	}

	@Override
	public VillagesBean findByVName(String vName) {
		// TODO Auto-generated method stub
		return villageRepository.findByVName(vName);
	}

	
	@Override
	public List<VillagesBean> findAllVillagesBean() {
		// TODO Auto-generated method stub
		return villageRepository.findAll();
	}

	

	

	@Override
	public void updateVillagesBean(VillagesBean village) {
		// TODO Auto-generated method stub
		saveVillagesBean(village);
		
	}

	@Override
	public void deleteVillagesBeanById(int id) {
		// TODO Auto-generated method stub
		villageRepository.deleteAll();
	}

	@Override
	public void deleteAllVillagesBean() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isVillagesBeanExist(VillagesBean village) {
		// TODO Auto-generated method stub
		return findByVName(village.getvName()) != null;
	}

	
	

	@Override
	public void saveVillagesBean(VillagesBean village) {
		// TODO Auto-generated method stub
		villageRepository.save(village);
	}

	

}
