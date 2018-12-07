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
	public List<Site> findByVillageId(List<Integer>  villageIdList) {
		
		////jdbcTemplate
		//for list of all sites with village bean is working 
		// String queryStr1 ="select s from Site s join s.villageId c where s.villageId =1";
		 //String queryStr1 ="select S from Site s join s.villageId c where s.villageId IN (:villageIdList)";
		 
		 
		/* String queryStr1 ="select s.id,s.colony,s.sqYd,s.price,s.validDate,s.listingId,s.siteDimensions,s.siteFacing,s.roadDimensions,s.roadFacing, s.status,"
				 		+" s.propertyType,s.villageId,v.vName,v.pinCode from Site s, VillagesBean v where s.villageId =v.id and s.villageId IN (1,2)";*/
		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer.append("FROM Site s where s.villageId");
		Query query ;
		if(villageIdList.size() == 1) {
			
			stringBuffer.append("=:villageIdList");
			
			query =entityManager.createNativeQuery(stringBuffer.toString()); 
			query.setParameter("villageIdList", villageIdList.get(0));
		}else {
			stringBuffer.append("in (:villageIdList)");
			query =entityManager.createNativeQuery(stringBuffer.toString()); 
			query.setParameter("villageIdList", villageIdList);
		}
		 //String queryStr = "FROM Site s where s.villageId in (:villageIdList)";
	//	FROM Site s where s.villageId=1
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
