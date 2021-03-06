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
	public List<Site> findByVillageId(List<Integer>  villageIdList,List<String> facingList,List<String> protoTypeList,
			 						  List<String> roadFacingArrylist,List<String> roadDimensionsArryList) {
		
		// String queryStr1 ="select s from Site s join s.villageId c where s.villageId =1";
		 //String queryStr1 ="select S from Site s join s.villageId c where s.villageId IN (:villageIdList)";
		/* String queryStr1 ="select s.id,s.colony,s.sqYd,s.price,s.validDate,s.listingId,s.siteDimensions,s.siteFacing,s.roadDimensions,s.roadFacing, s.status,"
				 		+" s.propertyType,s.villageId,v.vName,v.pinCode from Site s, VillagesBean v where s.villageId =v.id and s.villageId IN (1,2)";*/
		
		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer.append("From Site s , VillagesBean v where s.villageId=v.id");
		
		if(!villageIdList.isEmpty() ) {
			
			stringBuffer.append(" and s.villageId.id in :villageIdList");
			
		}
		if(!facingList.isEmpty()) {
					
					stringBuffer.append(" and s.siteFacing in :facingList");
				}
		if(!protoTypeList.isEmpty()) {
			
			stringBuffer.append(" and s.propertyType in :protoTypeList");
		}
		if(!roadFacingArrylist.isEmpty()) {
					
					stringBuffer.append(" and s.roadFacing in :roadFacingArrylist");
				}
		if(!roadDimensionsArryList.isEmpty()) {
			
			stringBuffer.append(" and s.roadDimensions in :roadDimensionsArryList");
		}
		
		//Query query = entityManager.createQuery("From Site s , VillagesBean v where s.villageId=v.id and s.villageId.id in :villageIdList  ").setParameter("villageIdList", villageIdList);
		
		Query query = entityManager.createQuery(stringBuffer.toString());
				if(!villageIdList.isEmpty()) {query.setParameter("villageIdList", villageIdList);}	
				if(!facingList.isEmpty()) {query.setParameter("facingList", facingList);}	
				if(!protoTypeList.isEmpty()) {query.setParameter("protoTypeList", protoTypeList);}	
				if(!roadFacingArrylist.isEmpty()) {query.setParameter("roadFacingArrylist", roadFacingArrylist);}	
				if(!roadDimensionsArryList.isEmpty()) {query.setParameter("roadDimensionsArryList", roadDimensionsArryList);}	
				
		 
		return query.getResultList();
	}

	@Override
	public int totalSiteCount() {
		
		Query query = entityManager.createQuery("select count(*) From Site s where s.status=1");
		
		return query.getFirstResult();
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
