package com.wedding.test;

import javax.sql.DataSource;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.wedding.dao.UserInfoDao;
import com.wedding.model.User;
import com.wedding.service.UserInfoService;

public class TestDataSource {
  
	@Test
	public void Test1(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("bean.xml");
		DataSource dataSource=(DataSource) ac.getBean("dataSource");
		System.out.println(dataSource.toString());
		
	}
	
	@Test
	public void Test2(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("bean.xml");
		System.out.println(ac.getBean("sqlSessionFactory"));
		
	}
	
	@Test
	public void Test3(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("bean.xml");//初始化容器
		UserInfoDao userInfoDao=  (UserInfoDao) ac.getBean("userDao");
		System.out.println(userInfoDao.toString());
	}
	
	@Test
	public void Test4(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("bean.xml");//初始化容器
		UserInfoDao userInfoDao=  (UserInfoDao) ac.getBean("userDao");
		User u=new User();
		u.setPassword("123");
		u.setUsername("方金炜项目经理");
		userInfoDao.UserAdd(u);
	    System.out.println("===========");	
	}
	
	@Test
	public void Test5(){
		ApplicationContext ac=new ClassPathXmlApplicationContext("bean.xml");//初始化容器
		UserInfoService userInfoService=  (UserInfoService) ac.getBean("userService");
		User u=new User();
		u.setPassword("123");
		u.setUsername("方金炜项目经理");
		
		User user = userInfoService.findlogin(u);
		System.out.println(user);
	}
}
