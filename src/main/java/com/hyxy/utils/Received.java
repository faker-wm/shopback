package com.hyxy.utils;

import java.util.List;

import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyxy.entity.UpDate;
import com.hyxy.service.UpDateService;

@Service
public class Received {

	@Autowired
	private UpDateService upDateService;

	@RabbitListener(queues = "banner_select")
	@RabbitHandler
	public List<UpDate> select(String string) throws Exception {
		return upDateService.selectALL();
	}

	@RabbitListener(queues = "banner_add")
	@RabbitHandler
	public void insert(UpDate upDate) throws Exception {
		upDateService.insert(upDate);
	}

	@RabbitListener(queues = "banner_update")
	@RabbitHandler
	public void update(UpDate upDate) throws Exception {
		upDateService.upDateById(upDate);
	}
	
	@RabbitListener(queues = "banner_delete")
	@RabbitHandler
	public void delete(Integer id) throws Exception {
		upDateService.deleteById(id);
	}
}
