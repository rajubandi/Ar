package com.charvikent.RealEstateAdvisors.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.charvikent.RealEstateAdvisors.model.PriceTrends;
import com.charvikent.RealEstateAdvisors.model.Site;
import com.charvikent.RealEstateAdvisors.model.VillagesBean;
@Repository
public interface PriceTrendsRepository  extends JpaRepository<PriceTrends, Integer>{

	
	@Query("From PriceTrends p , VillagesBean v where p.villageId=v.id")
	List<PriceTrends> findAll();

	@Query("")
	List<Site> findPriceTrendByVillageId(List<Integer> vlist);
	

}
