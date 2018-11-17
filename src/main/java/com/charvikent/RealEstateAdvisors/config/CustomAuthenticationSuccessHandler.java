package com.charvikent.RealEstateAdvisors.config;

import java.io.IOException;

/*import javax.servlet.RequestDispatcher;*/
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
/*import org.springframework.http.HttpRequest;*/
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
/*import org.springframework.ui.Model;*/

import com.charvikent.RealEstateAdvisors.model.Users;
import com.charvikent.RealEstateAdvisors.service.UsersServiceImpl;

@Component
public class CustomAuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired UsersServiceImpl userService;
	//@Autowired DashBoardDao dashBoardDao;
	
	@Autowired
	HttpSession session;
	
	/*@Autowired
	CategoryDao categoryDao;*/
	
	@Autowired
	UsersServiceImpl userDao;
	/*public CustomAuthenticationSuccessHandler()
	{
		super();
        setUseReferer(true);
        System.out.println("system called");
	}*/

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		logger.info("AT onAuthenticationSuccess(...) function!");
		// set our response to OK status
		response.setStatus(HttpServletResponse.SC_OK);
		// Add save record here
		
		//List<Category> listOrderBeans = categoryDao.getCategoryNames();
		
		
		
		
		
		Object objUser = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
		Users userDesignation= userService.getUserDesignationById(((Users) objUser).getId());
		
		
		 if(userDesignation.getDesignation().equals("ROLE_ADMIN")) {
			 
			 session.setAttribute("userDesignationSession", userDesignation);
			 
			 
			 session.setAttribute("sessionUser",((Users) objUser).getFirstName());
			 response.sendRedirect("dashBoard");
		 }else
			{
				
				Users objuserBean = (Users)objUser;
				session.setAttribute("userDesignationSession", objuserBean);
				//session.setAttribute("sCategorylist",listOrderBeans);
					 session.setAttribute("sessionUser", objuserBean.getFirstName());
					 response.sendRedirect("index");
		            	
			}
		/*if(objUser instanceof Users)
		{
			
			Users objuserBean = (Users)objUser;
			
			session.setAttribute("objuserBean", objuserBean);
		
			session.setAttribute("lastLoginTime", userDao.getLastloginTime());
			
		 userService.setLoginRecord(objuserBean.getId(),"login");
		
			
			User userDesignation= userService.getUserDesignationById(objuserBean.getId());
				
				 session.setAttribute("userDesignationSession", userDesignation);
				 
				 System.out.println(dashBoardDao.getSeverityCountsUnderReportTo());
				 
				 session.setAttribute("sessionUser", objuserBean.getFirstName());
				 try {
						HashMap<String, String> countsOrderBeans = dashBoardDao.getTasksCountBySeverity();
						ObjectMapper objectMapper;
						String sJson;
						
						if (listOrderBeans != null && countsOrderBeans.size() > 0) {
							objectMapper = new ObjectMapper();
							sJson = objectMapper.writeValueAsString(countsOrderBeans);
							String sJson2 = objectMapper.writeValueAsString(dashBoardDao.getSeverityCountsUnderReportTo());
							session.setAttribute("severityCounts", sJson);
							session.setAttribute("severityCounts2", sJson2);
							// System.out.println(sJson);
						} else {
							objectMapper = new ObjectMapper();
							sJson = objectMapper.writeValueAsString(countsOrderBeans);
							session.setAttribute("severityCounts", "''");
						}

					} catch (Exception e) {
						e.printStackTrace();
						System.out.println(e);

					}
				 
				 response.sendRedirect("dashBoard");
				 
		}
		else
			if(objUser instanceof Users)
			{
				
				Users objuserBean = (Users)objUser;
					
				//session.setAttribute("sCategorylist",listOrderBeans);
					 session.setAttribute("sessionUser", objuserBean.getFirstName());
					 response.sendRedirect("customerDashBoard");
		            	
			}*/
		
            
		
	}

}
