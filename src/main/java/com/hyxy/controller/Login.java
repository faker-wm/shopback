package com.hyxy.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.hyxy.entity.Users;
import com.hyxy.service.LoginService;

@Controller
@RequestMapping("Login")
public class Login {

	@Autowired
	private LoginService LoginService;

	@RequestMapping("login")
	public String login(Users user, HttpServletRequest req, HttpServletResponse resp) {

		System.out.println(LoginService.getRoles(user.getUsername()));
		System.out.println(LoginService.getPermissions(user.getUsername()));
		// 获取登录验证类
		Subject subject = SecurityUtils.getSubject();
		// 把数据名和密码传给自定义的myrealm中的AuthenticationToken token用户登录信息接口
		UsernamePasswordToken token = new UsernamePasswordToken(user.getUsername(), user.getPassword());
		try {
			subject.login(token);
			return "index";
		} catch (Exception e) {
			return "forward:/login.jsp";
		}

	}
	
	
	   /**
	    * 退出登录
	    */
	   @RequestMapping("logout")
	   public String logout(HttpServletRequest request) {
	      // subject的实现类DelegatingSubject的logout方法，将本subject对象的session清空了
	      Subject subject = SecurityUtils.getSubject();
	      subject.logout();
	      return "forward:/login.jsp";
	   }
}
