package com.infiniteskill.mvc.interceptors;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.infiniteskill.mvc.Hitcounter;

public class GlobalInterceptor extends HandlerInterceptorAdapter {
	
	@Autowired
	private Hitcounter hitcounter;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		hitcounter.setHits(hitcounter.getHits()+1);
		System.out.println("Hits: "+ hitcounter.getHits());
		request.setAttribute("currentDate", new Date());
		return super.preHandle(request, response, handler);
	}
	

}
