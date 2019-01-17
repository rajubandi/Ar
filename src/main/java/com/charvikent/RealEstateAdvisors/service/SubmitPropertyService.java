package com.charvikent.RealEstateAdvisors.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.charvikent.RealEstateAdvisors.model.SubmitProperty;
import com.charvikent.RealEstateAdvisors.repositories.SubmitPropertyRepository;

@Service
public class SubmitPropertyService {
	
	@Autowired
	private SubmitPropertyRepository submitPropertyRepo;
	
	public SubmitProperty createProperty(SubmitProperty submitProperty) {
		return submitPropertyRepo.save(submitProperty);
	}

}
