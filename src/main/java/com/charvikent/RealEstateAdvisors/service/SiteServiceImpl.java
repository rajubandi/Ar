package com.charvikent.RealEstateAdvisors.service;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.charvikent.RealEstateAdvisors.model.Site;
import com.charvikent.RealEstateAdvisors.model.VillagesBean;
import com.charvikent.RealEstateAdvisors.repositories.SiteRepository;

@Service("siteService")
@Transactional
public class SiteServiceImpl implements SiteService {
	@Autowired
    private JdbcTemplate jdbcTemplate;
	
	@PersistenceContext
    private EntityManager entityManager;
	@Autowired
	private SiteRepository siteRepository;

	@Override
	public void saveSite(Site site) {

		siteRepository.save(site);
	}

	@Override
	public VillagesBean findByVillageId(int id) {
		// TODO Auto-generated method stub
		
		return siteRepository.findByVillageId(id);
	}

	@Override
	public List<Site> findByVillageId(String villageIdList) {
		
		////jdbcTemplate
		//for list of all sites with village bean is working 
		// String queryStr1 ="select s from Site s join s.villageId c where s.villageId =1";
		 String queryStr1 ="select b from VillagesBean b join b.sites c where c.villageId IN (:villageIdList)";

		 String queryStr = "FROM Site s where s.villageId any :villageIdList";
		 Query query =entityManager.createQuery(queryStr1); 
		 query.setParameter("villageIdList", villageIdList);
		 
		return query.getResultList();
	}

	
	
	/*@Override
	public VillagesBean findById(int id) {
		// TODO Auto-generated method stub
		return villageRepository.findById(id);
	}

	@Override
	public VillagesBean findByVName(String vName) {
		// TODO Auto-generated method stub
		return villageRepository.findByVName(vName);
	}

	
	@Override
	public List<VillagesBean> findAllVillagesBean() {
		// TODO Auto-generated method stub
		return villageRepository.findAll();
	}

	

	

	@Override
	public void updateVillagesBean(VillagesBean village) {
		// TODO Auto-generated method stub
		saveVillagesBean(village);
		
	}

	@Override
	public void deleteVillagesBeanById(int id) {
		// TODO Auto-generated method stub
		villageRepository.deleteAll();
	}

	@Override
	public void deleteAllVillagesBean() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean isVillagesBeanExist(VillagesBean village) {
		// TODO Auto-generated method stub
		return findByVName(village.getvName()) != null;
	}

	
	

	@Override
	public void saveVillagesBean(VillagesBean village) {
		// TODO Auto-generated method stub
		villageRepository.save(village);
	}*/

	

}
