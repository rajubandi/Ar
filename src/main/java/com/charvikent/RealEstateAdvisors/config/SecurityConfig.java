
package com.charvikent.RealEstateAdvisors.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.security.web.context.NullSecurityContextRepository;



@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

 
 
 
	 
	 @Autowired 
	 private UserDetailsService userDetailsService;
	 
	 @Autowired
	 CustomAuthenticationSuccessHandler customAuthenticationSuccessHandler;
	 
	 @Autowired
	 CustomLogoutSuccessHandler customLogoutSuccessHandler;

 
 @Override
 public void configure(AuthenticationManagerBuilder auth) throws Exception {    
	 auth.userDetailsService(userDetailsService);
	 //.passwordEncoder(passwordencoder());
 } 
 
 @Override
 protected void configure(HttpSecurity http) throws Exception {
	 http.authorizeRequests()
	  .antMatchers("/dashBoard").access("hasRole('ROLE_ADMIN')")
	  //.antMatchers("/allsalesrequest").access("hasRole('ROLE_ADMIN')")
	  //.antMatchers("/custRegistration").access("hasRole('ROLE_ADMIN')")
	  //.antMatchers("/employee").access("hasRole('ROLE_BRANCHHEAD')")
	 // .antMatchers("/company").access("hasRole('ROLE_ADMIN')")
	  //.antMatchers("/product").access("hasRole('ROLE_ADMIN')")
	 // .antMatchers("/employee").access("hasRole('ROLE_BRANCHHEAD')")
	  //.antMatchers("/abBranch").access("hasRole('ROLE_MASTERADMIN')")
	 // .antMatchers("/dashBoard").access("hasRole('ROLE_USER') or  hasRole('ROLE_BRANCHHEAD') ")
	  //.antMatchers("/task").access("hasRole('ROLE_USER') or hasRole('ROLE_BRANCHHEAD')")
	  //.antMatchers("/customerDashBoard").access("hasRole('ROLE_CUSTOMER')")
	 // .antMatchers("/index").access("hasRole('ROLE_ADMIN') or hasRole('ROLE_USER') ")
	  //.antMatchers("/")
	 //.antMatchers("/index")
	 // .anyRequest().permitAll()  //dashboard,task
  .and()
    .formLogin().loginPage("/customerlogin").permitAll()
    .usernameParameter("username").passwordParameter("password")
    .successHandler(customAuthenticationSuccessHandler)
    .and()
    .logout()
    //.logoutUrl("/")
    .logoutSuccessUrl("/") 
   .invalidateHttpSession(true).clearAuthentication(true)
   .logoutSuccessHandler(customLogoutSuccessHandler)
   .and()
   .exceptionHandling().accessDeniedPage("/403")
  .and()
    .csrf().disable();
	 
	 http.addFilterBefore(new CustomUsernamePasswordAuthenticationFilter(), UsernamePasswordAuthenticationFilter.class);
	 
	// http.securityContext().securityContextRepository(new NullSecurityContextRepository());
 }


	
 
 
 
 @Bean(name="passwordEncoder")
    public PasswordEncoder passwordencoder(){
     return new BCryptPasswordEncoder();
    }

 
}