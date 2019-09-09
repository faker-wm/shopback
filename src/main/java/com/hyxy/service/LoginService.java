package com.hyxy.service;

import java.util.Set;

import com.hyxy.entity.Users;

public interface LoginService {

	Users selectUS(Users user);

	Users getByUserName(String username);

	Set<String> getRoles(String userName);

	Set<String> getPermissions(String userName);

}
