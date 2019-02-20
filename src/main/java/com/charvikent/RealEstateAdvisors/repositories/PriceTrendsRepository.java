package com.charvikent.RealEstateAdvisors.repositories;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.charvikent.RealEstateAdvisors.model.PriceTrends;
@Repository
public interface PriceTrendsRepository  extends JpaRepository<PriceTrends, Integer>{

	
	@Query("From PriceTrends p , VillagesBean v where p.villageId=v.id")
	List<PriceTrends> findAll();

	/*@Query("From PriceTrends p , VillagesBean v where p.villageId=v.id and p.villageId.id in :vlist")
	List<PriceTrends> findPriceTrendByVillageId(@Param("vlist") List<Integer> vlist,@Param("monthsList") List<Integer> monthsArryList);*/
	//select  DISTINCT MONTH(p.priceTrendTime) From PriceTrends p
	@Query("select DISTINCT p.priceTrendTime From PriceTrends p ")
	List<Date> getListOfMonthAndYear();
	

}
