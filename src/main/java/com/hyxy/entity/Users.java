package com.hyxy.entity;

import java.io.Serializable;

public class Users implements Serializable{
    private Integer id;

    private String username;

    private String password;

    private Integer roleId;

    private String mima;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public String getMima() {
        return mima;
    }

    public void setMima(String mima) {
        this.mima = mima == null ? null : mima.trim();
    }
}