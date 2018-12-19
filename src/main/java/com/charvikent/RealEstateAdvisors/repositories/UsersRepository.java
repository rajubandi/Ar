package com.charvikent.RealEstateAdvisors.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.charvikent.RealEstateAdvisors.model.Users;
@Repository
public interface UsersRepository  extends JpaRepository<Users, Integer>{

	Users findByUserName(String name);

	List<Users> findAll();


	Users findById(int id);

	void deleteAll();
	@Query("from Users u where u.designation=:designation ")
	Users findByDesignation(@Param("designation") String designation);

}
