package com.charvikent.RealEstateAdvisors.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.charvikent.RealEstateAdvisors.model.Users;

@Service("usersService")
@Transactional
public class UsersServiceImpl implements UsersService {
	
	@PersistenceContext
	private EntityManager em;
	
	@SuppressWarnings("unchecked")
	public Users findByUserName(String userName)
	{
		/*User user= (User) em.createQuery("select user from User user where (email=:Custname or mobilenumber =:Custname) ").setParameter("Custname", userName).getSingleResult();
		System.out.println(user);
		return user;*/

		String hql ="From Users where mobile_number= '"+userName+"' ";
		
		Query query = em.createQuery(hql);
		
		
		List<Users> list =query.getResultList();
		
		       if(list.size() >0)
		       {
		    	   return list.get(0);
		       }
		       else
		       return null;
		
	}

	/*@Override
	public List<String> findRoleByUserName(String userName) {
		List<String> list= em.createNativeQuery("select m.desigrole from users u,roles m  where  m.designationid=u.designation and u.username =:Custname").setParameter("Custname", userName).getResultList();


		System.out.println(list);
		return list;
	}*/
	
	@SuppressWarnings("unchecked")
	public List<String> findRoleByUserName(String Username)
	{
		//List<String> list= em.createNativeQuery("SELECT d.name FROM  kpusers u,kpdesignation d,kpmultiroles m  where u.designation=d.id  and k.username=:Custname").setParameter("Custname", Username).getResultList();
		//List<String> list= em.createNativeQuery("select m.desigrole from kpusers u,kpdesignation d,kpmultiroles m  where u.designation=d.id and m.designationid=u.designation and u.username =:Custname").setParameter("Custname", Username).getResultList();
		List<String> list= em.createNativeQuery("select m.desigrole from users u,roles m  where  m.designationid=u.designation and (u.email =:Custname or u.mobile_number =:Custname)").setParameter("Custname", Username).getResultList();


		System.out.println(list);
		return list;


	}

	public Users validateCustomer(String loginid, String password) {
		String hql =" from Users  where enabled='1'and (mobile_number ='"+loginid+"' or email = '"+loginid+"') and password='"+password +"'";
		Query query =em.createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Users>usersList =query.getResultList();
		if(usersList.isEmpty())
	           return null;
	           else
		return usersList.get(0);
	}

	public Object getLastloginTime() {
		// TODO Auto-generated method stub
		return null;
	}

	public Users getUserDesignationById(Integer id) {
		
		String hql ="select  ku.user_name, kd.desigrole from roles kd,users ku where ku.designation=kd.id and ku.id=:id ";
		Users users =new Users();
		try{
			
			@SuppressWarnings("unchecked")
			List<Object[]> rows = em.createNativeQuery(hql).setParameter("id", id).getResultList();
			
		for (Object[] row : rows) {
			
			users.setUserName((String) row[0]);
			users.setDesignation((String) row[1]);
					
		}
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}

	return  users;
	}


	

	

	

}
