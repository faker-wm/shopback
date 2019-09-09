package com.hyxy.config;

import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.core.TopicExchange;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class RabbitConf {
	// 多个队列名称
	private final static String QUEUE_NAME = "banner_add";
	private final static String QUEUE_NAME1 = "banner_update";
	private final static String QUEUE_NAME2 = "banner_delete";
	private final static String QUEUE_NAME3 = "banner_select";
	private final static String QUEUE_NAME4 = "banner_selectByID";

	private final static String exchange = "banner";

	@Bean
	public Queue queue() {
		return new Queue(RabbitConf.QUEUE_NAME);
	}

	@Bean
	public Queue queue1() {
		return new Queue(RabbitConf.QUEUE_NAME1);
	}
	
	@Bean
	public Queue queue2() {
		return new Queue(RabbitConf.QUEUE_NAME2);
	}
	
	@Bean
	public Queue queue3() {
		return new Queue(RabbitConf.QUEUE_NAME3);
	}
	
	@Bean
	public Queue queue4() {
		return new Queue(RabbitConf.QUEUE_NAME4);
	}

	/**
	 *  创建一个direct类型的交换机,direct--处理路由键  
	 */
	@Bean
	public TopicExchange topicExchange() {
		return new TopicExchange(exchange);
	}

	@Bean
	public Binding binding() {
		return BindingBuilder.bind(queue()).to(topicExchange()).with("banner.add");
	}

	@Bean
	public Binding binding1() {
		return BindingBuilder.bind(queue1()).to(topicExchange()).with("banner.update");
	}
	
	@Bean
	public Binding binding2() {
		return BindingBuilder.bind(queue2()).to(topicExchange()).with("banner.delete");
	}
	
	@Bean
	public Binding binding3() {
		return BindingBuilder.bind(queue3()).to(topicExchange()).with("banner.select");
	}
	
	@Bean
	public Binding binding4() {
		return BindingBuilder.bind(queue4()).to(topicExchange()).with("banner.selectByID");
	}
}
