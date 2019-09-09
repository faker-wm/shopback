package com.hyxy.service;

import java.util.List;

import com.hyxy.entity.UpDate;

public interface UpDateService {

	List<UpDate> selectALL();

	void insert(UpDate upDate);

	void upDateById(UpDate upDate);

	void deleteById(Integer id);

	UpDate selectById(Integer id);

}
