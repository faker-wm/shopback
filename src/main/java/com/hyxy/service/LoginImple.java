package com.hyxy.service;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyxy.dao.UsersMapper;
import com.hyxy.entity.Users;

@Service
public class LoginImple implements LoginService{
	
	@Autowired
	private UsersMapper UsersMapper;

	@Override
	public Users selectUS(Users user) {
		return UsersMapper.selectUS(user);
	}

	@Override
	public Users getByUserName(String username) {
		return UsersMapper.getByUserName(username);
	}

	@Override
	public Set<String> getRoles(String userName) {
		return UsersMapper.getRoles(userName);
	}

	@Override
	public Set<String> getPermissions(String userName) {
		return UsersMapper.getPermissions(userName);
	}

}
