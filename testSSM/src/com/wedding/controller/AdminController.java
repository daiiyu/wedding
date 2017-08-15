package com.wedding.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.wedding.model.User;
import com.wedding.service.UserInfoService;

@Controller
@RequestMapping("admin")
public class AdminController {

	@Autowired
	private UserInfoService userInfoService;
	
	@RequestMapping(value="register.do", method={RequestMethod.GET, RequestMethod.POST})
	String UserRegister(User u){
		
		User result =userInfoService.findlogin(u);
		if(result == null) return "failed";
		
		userInfoService.insertRegister(u);
		return "success";
	}
}
