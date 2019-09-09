package com.hyxy.utils;

import org.springframework.amqp.rabbit.annotation.RabbitHandler;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.stereotype.Service;

//@Service
//@RabbitListener(queues = "shop_banner1")
public class Received2 {
	
	@RabbitHandler
	public void message(String str) {
		System.out.println("消息二："+str);
	}
}
