package com.hyxy.entity;

import java.io.Serializable;

public class Function implements Serializable{
    private Integer id;

    private String name;

    private String rank;

    private String supRank;

    private String url;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getRank() {
        return rank;
    }

    public void setRank(String rank) {
        this.rank = rank == null ? null : rank.trim();
    }

    public String getSupRank() {
        return supRank;
    }

    public void setSupRank(String supRank) {
        this.supRank = supRank == null ? null : supRank.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }
}