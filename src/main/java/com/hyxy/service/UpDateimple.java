package com.hyxy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyxy.dao.UpDateMapper;
import com.hyxy.entity.UpDate;

@Service
public class UpDateimple implements UpDateService{

	@Autowired
	private UpDateMapper UpDateMapper;
	
	@Override
	public List<UpDate> selectALL() {
		return UpDateMapper.selectAll();
	}

	@Override
	public void insert(UpDate upDate) {
		UpDateMapper.insert(upDate);
	}

	@Override
	public void upDateById(UpDate upDate) {
		UpDateMapper.updateByPrimaryKey(upDate);
	}

	@Override
	public void deleteById(Integer id) {
		UpDateMapper.deleteById(id);
	}

	@Override
	public UpDate selectById(Integer id) {
		return UpDateMapper.selectByPrimaryKey(id);
	}

}
