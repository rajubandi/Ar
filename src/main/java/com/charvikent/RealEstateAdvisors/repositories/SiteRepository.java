package com.charvikent.RealEstateAdvisors.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.charvikent.RealEstateAdvisors.model.Site;
import com.charvikent.RealEstateAdvisors.model.VillagesBeaUserIntrestedSites;
@Repository
public interface SiteRepository  extends JpaRepository<Site, Integer>{

	//VillagesBean findByVName(String vName);
	VillagesBeaUserIntrestedSites findByVillageId(Integer villageId);	
	List<Site> findAll();


	//VillagesBean findById(int id);

	//void deleteAll();

}
