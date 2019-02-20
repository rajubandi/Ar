package com.charvikent.RealEstateAdvisors.service;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.charvikent.RealEstateAdvisors.model.PriceTrends;
import com.charvikent.RealEstateAdvisors.model.Site;
import com.charvikent.RealEstateAdvisors.repositories.PriceTrendsRepository;
import com.charvikent.RealEstateAdvisors.repositories.SiteRepository;

@Service("priceTrendsRepositoriesImpl")
@Transactional
public class PriceTrendsRepositoriesImpl implements PriceTrendsRepository {
	/*@Autowired
    private JdbcTemplate jdbcTemplate;*/
	
	@PersistenceContext
    private EntityManager entityManager;
	/*@Autowired
	private SiteRepository siteRepository;
*/
	
	public List<PriceTrends>  findPriceTrendByVillageId(List<Integer>  villageIdList, List<Integer> monthsArryList) {
		
		// String queryStr1 ="select s from Site s join s.villageId c where s.villageId =1";
		 //String queryStr1 ="select S from Site s join s.villageId c where s.villageId IN (:villageIdList)";
		/* String queryStr1 ="select s.id,s.colony,s.sqYd,s.price,s.validDate,s.listingId,s.siteDimensions,s.siteFacing,s.roadDimensions,s.roadFacing, s.status,"
				 		+" s.propertyType,s.villageId,v.vName,v.pinCode from Site s, VillagesBean v where s.villageId =v.id and s.villageId IN (1,2)";*/
		
		StringBuffer stringBuffer = new StringBuffer();
		stringBuffer.append("From PriceTrends p , VillagesBean v where p.villageId=v.id ");
		
		if(!villageIdList.isEmpty() ) {
			
			stringBuffer.append(" and p.villageId.id in :vlist");
			
		}
		if(!monthsArryList.isEmpty()) {
					
					stringBuffer.append(" and month( p.priceTrendTime) in :monthsArryList");
				}
		/*if(!protoTypeList.isEmpty()) {
			
			stringBuffer.append(" and s.propertyType in :protoTypeList");
		}
		if(!roadFacingArrylist.isEmpty()) {
					
					stringBuffer.append(" and s.roadFacing in :roadFacingArrylist");
				}
		if(!roadDimensionsArryList.isEmpty()) {
			
			stringBuffer.append(" and s.roadDimensions in :roadDimensionsArryList");
		}*/
		
		//Query query = entityManager.createQuery("From Site s , VillagesBean v where s.villageId=v.id and s.villageId.id in :villageIdList  ").setParameter("villageIdList", villageIdList);
		
		Query query = entityManager.createQuery(stringBuffer.toString());
				if(!villageIdList.isEmpty()) {query.setParameter("vlist", villageIdList);}	
				if(!monthsArryList.isEmpty()) {query.setParameter("monthsArryList", monthsArryList);}	
				/*if(!protoTypeList.isEmpty()) {query.setParameter("protoTypeList", protoTypeList);}	
				if(!roadFacingArrylist.isEmpty()) {query.setParameter("roadFacingArrylist", roadFacingArrylist);}	
				if(!roadDimensionsArryList.isEmpty()) {query.setParameter("roadDimensionsArryList", roadDimensionsArryList);}	*/
				
		 
		return query.getResultList();
	}



	@Override
	public List<PriceTrends> findAll(Sort sort) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public List<PriceTrends> findAll(Iterable<Integer> ids) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public <S extends PriceTrends> List<S> save(Iterable<S> entities) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public void flush() {
		// TODO Auto-generated method stub
		
	}



	@Override
	public <S extends PriceTrends> S saveAndFlush(S entity) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public void deleteInBatch(Iterable<PriceTrends> entities) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public void deleteAllInBatch() {
		// TODO Auto-generated method stub
		
	}



	@Override
	public PriceTrends getOne(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public <S extends PriceTrends> List<S> findAll(Example<S> example) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public <S extends PriceTrends> List<S> findAll(Example<S> example, Sort sort) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public Page<PriceTrends> findAll(Pageable arg0) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public long count() {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public void delete(Integer arg0) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public void delete(PriceTrends arg0) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public void delete(Iterable<? extends PriceTrends> arg0) {
		// TODO Auto-generated method stub
		
	}



	@Override
	public void deleteAll() {
		// TODO Auto-generated method stub
		
	}



	@Override
	public boolean exists(Integer arg0) {
		// TODO Auto-generated method stub
		return false;
	}



	@Override
	public PriceTrends findOne(Integer arg0) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public <S extends PriceTrends> S save(S arg0) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public <S extends PriceTrends> long count(Example<S> arg0) {
		// TODO Auto-generated method stub
		return 0;
	}



	@Override
	public <S extends PriceTrends> boolean exists(Example<S> arg0) {
		// TODO Auto-generated method stub
		return false;
	}



	@Override
	public <S extends PriceTrends> Page<S> findAll(Example<S> arg0, Pageable arg1) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public <S extends PriceTrends> S findOne(Example<S> arg0) {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public List<PriceTrends> findAll() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<Date> getListOfMonthAndYear() {
		// TODO Auto-generated method stub
		return null;
	}

	
	

}
