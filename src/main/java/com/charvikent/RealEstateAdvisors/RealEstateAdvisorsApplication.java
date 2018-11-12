package com.charvikent.RealEstateAdvisors;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.security.SecurityAutoConfiguration;

//@SpringBootApplication(exclude = {SecurityAutoConfiguration.class })
@SpringBootApplication
public class RealEstateAdvisorsApplication {

	public static void main(String[] args) {
		SpringApplication.run(RealEstateAdvisorsApplication.class, args);
	}
}
