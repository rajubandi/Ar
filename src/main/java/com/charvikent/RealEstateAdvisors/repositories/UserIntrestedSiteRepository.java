package com.charvikent.RealEstateAdvisors.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.charvikent.RealEstateAdvisors.model.UserIntrestedSites;
@Repository
public interface UserIntrestedSiteRepository  extends JpaRepository<UserIntrestedSites, Integer>{

	//UserIntrestedSites findByVName(String vName);

	@Query("from UserIntrestedSites ui,Site s,Users u where ui.userId=u.id and ui.siteId = s.id and ui.status=1")
	List<UserIntrestedSites> findAll();


	UserIntrestedSites findById(int id);
	//List<UserIntrestedSiteRepository> newNotification();

	void deleteAll();

}
