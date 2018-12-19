package com.charvikent.RealEstateAdvisors.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.charvikent.RealEstateAdvisors.model.Site;
import com.charvikent.RealEstateAdvisors.model.VillagesBean;
@Repository
public interface SiteRepository  extends JpaRepository<Site, Integer>{

	//VillagesBean findByVName(String vName);
	VillagesBean findByVillageId(Integer villageId);	
	VillagesBean findByVillageId(List<Integer> villageId);
	@Query("From Site s , VillagesBean v where s.villageId=v.id and s.status=1")
	List<Site> findAll();
	@Query("select count(s) from Site s where s.status=1")
	Long CountSite();
	@Query("select count(s) from Site s where s.siteFacing='Commercial'")
	Long CountByVillages();
	@Query("select v.id, v.vName,count(s.villageId) from VillagesBean v,Site s where v.id = s.villageId and s.status =1 group by s.villageId")
	List<Object> countOfSitesByVillage();
	@Query("from Site s,VillagesBean v where s.villageId = v.id and s.id=:id")
	Site findSiteById(@Param("id") int id);


	//VillagesBean findById(int id);

	//void deleteAll();

}
