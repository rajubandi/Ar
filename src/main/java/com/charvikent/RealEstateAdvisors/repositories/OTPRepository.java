package com.charvikent.RealEstateAdvisors.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.charvikent.RealEstateAdvisors.model.OTPDetails;
@Repository
public interface OTPRepository  extends JpaRepository<OTPDetails, Integer>{

	

}
