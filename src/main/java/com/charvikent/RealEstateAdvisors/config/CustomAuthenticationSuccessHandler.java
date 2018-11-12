package com.charvikent.RealEstateAdvisors.config;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

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
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;
/*import org.springframework.ui.Model;*/

import com.charvikent.RealEstateAdvisors.model.Users;
import com.charvikent.RealEstateAdvisors.repositories.UsersRepository;

@Component
public class CustomAuthenticationSuccessHandler extends SimpleUrlAuthenticationSuccessHandler implements AuthenticationSuccessHandler {
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Autowired UsersRepository usersRepository;
	//@Autowired DashBoardDao dashBoardDao;
	
	@Autowired
	HttpSession session;
	
	
	
	 private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
	/*public CustomAuthenticationSuccessHandler()
	{
		super();
        setUseReferer(true);
        System.out.println("system called");
	}*/

	  @Override
	    protected void handle(HttpServletRequest request, 
	      HttpServletResponse response, Authentication authentication) throws IOException {
	        String targetUrl = determineTargetUrl(authentication);
	  
	        if (response.isCommitted()) {
	            System.out.println("Can't redirect");
	            return;
	        }
	  
	        redirectStrategy.sendRedirect(request, response, targetUrl);
	    }
	  protected String determineTargetUrl(Authentication authentication) {
	        String url="";
	         
	        Collection<? extends GrantedAuthority> authorities =  authentication.getAuthorities();
	         
	        List<String> roles = new ArrayList<String>();
	 
	        for (GrantedAuthority a : authorities) {
	            roles.add(a.getAuthority());
	        }
	 
	        /*if (isDba(roles)) {
	            url = "/db";
	        } else*/ if (isAdmin(roles)) {
	            url = "/dashboard";
	        } else if (isUser(roles)) {
	            url = "/index";
	        } /*else {
	            url="/accessDenied";
	        }*/
	 
	        return url;
	    }
	  
	  public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
	        this.redirectStrategy = redirectStrategy;
	    }
	    protected RedirectStrategy getRedirectStrategy() {
	        return redirectStrategy;
	    }
	     
	    private boolean isUser(List<String> roles) {
	        if (roles.contains("ROLE_USER")) {
	            return true;
	        }
	        return false;
	    }
	 
	    private boolean isAdmin(List<String> roles) {
	        if (roles.contains("ROLE_ADMIN")) {
	            return true;
	        }
	        return false;
	    }
	 
	   /* private boolean isDba(List<String> roles) {
	        if (roles.contains("ROLE_DBA")) {
	            return true;
	        }
	        return false;
	    }*/
	/*@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		logger.info("AT onAuthenticationSuccess(...) function!");
		// set our response to OK status
		response.setStatus(HttpServletResponse.SC_OK);
		// Add save record here
		
		
		
		
		
		
		Object objUser = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		
		if(objUser instanceof Users)
		{
			
			Users objuserBean = (Users)objUser;
			
			session.setAttribute("objuserBean", objuserBean);
		
			//session.setAttribute("lastLoginTime", userDao.getLastloginTime());
			
		// userService.setLoginRecord(objuserBean.getId(),"login");
		
			
			//User userDesignation= userService.getUserDesignationById(objuserBean.getId());
				
				// session.setAttribute("userDesignationSession", userDesignation);
				 
				// System.out.println(dashBoardDao.getSeverityCountsUnderReportTo());
				 
				// session.setAttribute("sessionUser", objuserBean.getFirstname());
				 try {
						//HashMap<String, String> countsOrderBeans = dashBoardDao.getTasksCountBySeverity();
						//ObjectMapper objectMapper;
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
			if(objUser instanceof Customer)
			{
				
				Customer objuserBean = (Customer)objUser;
					
				session.setAttribute("sCategorylist",listOrderBeans);
					 session.setAttribute("sessionUser", objuserBean.getFirstname());
					 response.sendRedirect("customerDashBoard");
		            	
			}
		
            
		
	}
*/
}

