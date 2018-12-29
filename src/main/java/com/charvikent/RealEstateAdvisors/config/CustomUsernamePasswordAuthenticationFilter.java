/*package com.charvikent.RealEstateAdvisors.config;


import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.web.filter.GenericFilterBean;

public class CustomUsernamePasswordAuthenticationFilter extends GenericFilterBean{
	
	@Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private SimpleUrlAuthenticationFailureHandler authenticationFailureHandler;
    
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
    	  HttpServletRequest r = (HttpServletRequest)servletRequest;
    	  HttpServletResponse response = (HttpServletResponse) servletResponse;
       // if(servletRequest instanceof HttpServletRequest) {
          
            
        	         
           Enumeration<String> str = r.getAttributeNames();
           
           while (str.hasMoreElements()) {
               System.out.println(str.nextElement()); 
            }
           
        	           
        	HttpSession session =  r.getSession(false);
            
            String loginType = r.getParameter("userType");
            System.out.println("lfksjdfl@@@@@!!!#@!#@##" + session);
            r.getSession().setAttribute("userType", loginType);
            if(session == null){
                response.sendRedirect("/");
            }else {
            filterChain.doFilter(servletRequest, servletResponse);
        }
            
            
            
           // System.out.println("Filter" + loginType);
        
       // }
    }
}*/