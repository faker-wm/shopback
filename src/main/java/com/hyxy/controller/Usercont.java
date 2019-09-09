package com.hyxy.controller;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("Usercont")
public class Usercont {

	// 权限
	@RequestMapping("add")
	public void add(HttpServletResponse resp) throws IOException {
		// 获取到Subject
		Subject subject = SecurityUtils.getSubject();
		Boolean boolean1 = subject.isPermitted("user:fdsafdsafdsa");
		System.out.println(boolean1);
		if (!boolean1) {
			resp.sendRedirect("/unauthor.jsp");
		}
	}

	@RequestMapping("select")
	public void select() {
		// 获取到Subject
		Subject subject = SecurityUtils.getSubject();
		boolean[] boolean1 = subject.isPermitted("add", "select");
		System.out.println(Arrays.toString(boolean1));
	}

	// 角色
	@RequestMapping("admin")
	public void admin() {
		// 获取到Subject
		Subject subject = SecurityUtils.getSubject();
		System.out.println(subject.hasRole("管理员"));
	}

	@RequestMapping("editor")
	public void editor() {
		// 获取到Subject
		Subject subject = SecurityUtils.getSubject();
		System.out.println(subject.hasRole("运维"));
	}
}