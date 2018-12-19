package com.charvikent.RealEstateAdvisors.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.charvikent.RealEstateAdvisors.model.UserIntrestedSites;
@Repository
public interface UserIntrestedSiteRepository  extends JpaRepository<UserIntrestedSites, Integer>{

	//UserIntrestedSites findByVName(String vName);

	List<UserIntrestedSites> findAll();


	UserIntrestedSites findById(int id);
	@Query("from UserIntrestedSites where status=1")
	int newNotification();

	void deleteAll();

}
