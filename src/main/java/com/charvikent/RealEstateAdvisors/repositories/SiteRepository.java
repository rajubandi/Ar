package com.charvikent.RealEstateAdvisors.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.charvikent.RealEstateAdvisors.model.Site;
import com.charvikent.RealEstateAdvisors.model.VillagesBean;
@Repository
public interface SiteRepository  extends JpaRepository<Site, Integer>{

	//VillagesBean findByVName(String vName);
	VillagesBean findByVillageId(Integer villageId);	
	VillagesBean findByVillageId(List<Integer> villageId);	
	List<Site> findAll();
	@Query("select count(s) from Site s where s.status=1")
	Long Count();
	


	//VillagesBean findById(int id);

	//void deleteAll();

}
