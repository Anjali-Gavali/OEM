package com.anjali.oem;

import java.io.IOException;
import java.util.Collection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.anjali.oem.model.User;

@Component
public class SimpleAuthenticationSuccessHandler implements AuthenticationSuccessHandler {

	SimpleAuthenticationSuccessHandler(){
		
		super();
	}
	
    protected Log logger = LogFactory.getLog(this.getClass());
 
    private RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();
    
    /*@Override
    public void onAuthenticationSuccess(HttpServletRequest request, 
      HttpServletResponse response, Authentication authentication)
      throws IOException {
  
    	System.out.println("1234");
    	 HttpSession session = request.getSession();
         User authUser = (User) authentication.getPrincipal();
         session.setAttribute("username", authUser.getUsername());
         request.setAttribute("username", authUser.getUsername());
    	
        handle(request, response, authentication);
    
        System.out.println("Authentication "+authentication);
        clearAuthenticationAttributes(request);
    }*/
 
    protected void handle(HttpServletRequest request, 
      HttpServletResponse response, Authentication authentication)
      throws IOException {
  
        String targetUrl = determineTargetUrl(authentication);
 
        
        System.out.println("2222");
        System.out.println("targetUrl" + targetUrl);
        
        if (response.isCommitted()) {
            logger.debug(
              "Response has already been committed. Unable to redirect to "
              + targetUrl);
            return;
        }
 
        redirectStrategy.sendRedirect(request, response, targetUrl);
    }
 
    protected String determineTargetUrl(Authentication authentication) {
        boolean isUser = false;
        boolean isAdmin = false;
        Collection<? extends GrantedAuthority> authorities
         = authentication.getAuthorities();
        
        for (GrantedAuthority grantedAuthority : authorities) {
        	
        	
        	
            if (grantedAuthority.getAuthority().equals("ROLE_USER")) {
                isUser = true;
                break;
            } else if (grantedAuthority.getAuthority().equals("ROLE_ADMIN")) {
                isAdmin = true;
                break;
            }
        }
 
        if (isUser) {
            return "/welcome";
        } else if (isAdmin) {
            return "/hm";
        } else {
            throw new IllegalStateException();
        }
    }
 
    protected void clearAuthenticationAttributes(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session == null) {
            return;
        }
        session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
    }
 
    public void setRedirectStrategy(RedirectStrategy redirectStrategy) {
        this.redirectStrategy = redirectStrategy;
    }
    protected RedirectStrategy getRedirectStrategy() {
        return redirectStrategy;
    }

	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		System.out.println("1234");
   	 HttpSession session = request.getSession();
        User authUser = (User) authentication.getPrincipal();
        session.setAttribute("username", authUser.getUsername());
        request.setAttribute("username", authUser.getUsername());
   	
       handle(request, response, authentication);
   
       System.out.println("Authentication "+authentication);
       clearAuthenticationAttributes(request);
		
	}
}