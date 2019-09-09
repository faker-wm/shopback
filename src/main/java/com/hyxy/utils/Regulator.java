package com.hyxy.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.hyxy.entity.Users;


public class Regulator implements HandlerInterceptor{

	 // controller控制器被执行之前调用拦截器（如登录检查）
	   @Override
	   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object arg2) throws Exception {
		      //访问的路径
		      System.out.println(request.getRequestURL());
		      System.out.println(request.getServletPath());
		      System.out.println("aaa访问controller控制器之前的拦载器");
		      
	      Users member = (Users) request.getSession().getAttribute("user");

	      if (member == null) {
	         // 1.请求重定向：
	    	  System.out.println(request.getContextPath());
	         // 跳转到一个页面
	         response.sendRedirect(request.getRequestURL() + "/login.jsp");
	         return false;// 不执行之后的拦截器
	      }
	      return true; // 执行之后的拦截器
	   }

	   // 在controller控制器执行完后，呈现视图之前调用拦截器
	   @Override
	   public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
	         throws Exception {
	      System.err.println("bbbcontroller控制器执行完后，生成视图之前的拦截器");
	   }

	   // controller控制器执行完后，呈现视图之后调用的拦载器，释放资源
	   @Override
	   public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
	         throws Exception {
	      System.err.println("ccc生成视图后的拦载器，释放资源");
	   }

	
	

}
