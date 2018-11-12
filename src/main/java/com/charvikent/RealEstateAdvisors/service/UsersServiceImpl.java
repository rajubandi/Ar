package com.charvikent.RealEstateAdvisors.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("usersService")
@Transactional
public class UsersServiceImpl implements UsersService {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public List<String> findRoleByUserName(String userName) {
		List<String> list= em.createNativeQuery("select m.desigrole from users u,roles m  where  m.designationid=u.designation and u.username =:Custname").setParameter("Custname", userName).getResultList();


		System.out.println(list);
		return list;
	}

	

}
