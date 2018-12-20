package com.charvikent.RealEstateAdvisors;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.support.SpringBootServletInitializer;

//@SpringBootApplication(exclude = {SecurityAutoConfiguration.class })
@SpringBootApplication
public class RealEstateAdvisorsApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(RealEstateAdvisorsApplication.class, args);
	}
}
