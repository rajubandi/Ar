package com.charvikent.RealEstateAdvisors.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.charvikent.RealEstateAdvisors.model.VillagesBeaUserIntrestedSites;
@Repository
public interface VillageRepository  extends JpaRepository<VillagesBeaUserIntrestedSites, Integer>{

	VillagesBeaUserIntrestedSites findByVName(String vName);

	List<VillagesBeaUserIntrestedSites> findAll();


	VillagesBeaUserIntrestedSites findById(int id);

	void deleteAll();

}
