package com.info6250.neumarketplace.config;

import org.springframework.web.servlet.HandlerInterceptor;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
	    HttpSession session = request.getSession(false);
	    if (session == null || session.getAttribute("currentUser") == null) { // Check for "username"
	        response.sendRedirect(request.getContextPath() + "/login");
	        return false;
	    }
	    return true;
	}
}
