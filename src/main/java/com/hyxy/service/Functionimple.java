package com.hyxy.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyxy.dao.FunctionMapper;
import com.hyxy.entity.Function;

@Service
public class Functionimple implements FunctionService{
	
	@Autowired
	private FunctionMapper FunctionMapper;

	@Override
	public List<Function> selectALL() {
		return FunctionMapper.selectAll();
	}

}
