package com.charvikent.RealEstateAdvisors.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.charvikent.RealEstateAdvisors.model.VillagesBean;
@Repository
public interface VillageRepository  extends JpaRepository<VillagesBean, Integer>{

	VillagesBean findByVName(String vName);

	List<VillagesBean> findAll();


	VillagesBean findById(int id);

	void deleteAll();

}
