package com.hyxy.dao;

import com.hyxy.entity.Users;
import java.util.List;
import java.util.Set;

public interface UsersMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Users record);

    Users selectByPrimaryKey(Integer id);

    List<Users> selectAll();

    int updateByPrimaryKey(Users record);

	Users selectUS(Users user);

	Users getByUserName(String username);

	Set<String> getRoles(String userName);

	Set<String> getPermissions(String userName);
}