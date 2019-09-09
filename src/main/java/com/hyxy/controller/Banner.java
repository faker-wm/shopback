package com.hyxy.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.amqp.core.AmqpTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.hyxy.entity.UpDate;
import com.hyxy.service.UpDateService;
import com.hyxy.utils.upload2;

@Controller
@RequestMapping("banner")
public class Banner {
	
	@Autowired
	private AmqpTemplate  rabbitTemplate;
	@Autowired
	private UpDateService upDateService;
	
	@RequestMapping("show")
	public String show(Map<String, Object> map) {
		List<UpDate> list = upDateService.selectALL();
		map.put("list", list);
		return "banner";
	}
	
	@RequestMapping("add")
	public String add() {
		return "banner-add";
	}
	
	
	@ResponseBody
	@RequestMapping("bannerInsert")
	public Map<String, String> bannerUpdate(@RequestParam("img") MultipartFile[] files,UpDate upDate,HttpServletRequest req) {
		List<String> list = upload2.uploadfile(req, files);
		upDate.setImgpath(list.get(0));
		rabbitTemplate.convertAndSend("banner","banner.add",upDate);
		Map<String, String> map = new HashMap<>();
		map.put("message", "成功");
		return map;
	}
	
	@RequestMapping("selectById")
	public String selectById(Integer id,Map<String, UpDate> map) {
		UpDate upDate = upDateService.selectById(id);
		map.put("update", upDate);
		return "banner-edit";
	}
	
	@ResponseBody
	@RequestMapping("bannerAlter")
	public Map<String, String> BannerAlter(@RequestParam("img") MultipartFile[] files,UpDate upDate,HttpServletRequest req) {
		List<String> list = upload2.uploadfile(req, files);
		try {
			upDate.setImgpath(list.get(0));
		} catch (Exception e) {
		}
		System.out.println(upDate.getImgpath());
		upDateService.upDateById(upDate);
		Map<String, String> map = new HashMap<>();
		map.put("message", "成功");
		return map;
	}
	
	@RequestMapping("bannerDelete")
	public String BannerDelete(Integer id) throws Exception {
		rabbitTemplate.convertAndSend("banner","banner.delete",id);
		Thread.sleep(1000);
		return "forward:/banner/show";
	}

}
