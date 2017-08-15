package com.wedding.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedding.dao.UserInfoDao;
import com.wedding.model.User;
import com.wedding.service.UserInfoService;
@Service(value="userService")
public class UserServiceImpl implements UserInfoService{
  
	@Autowired
	private UserInfoDao userInfoDao;
	
	
	
	@Override
	public int addUser(User usr, String repassword) {
		// TODO Auto-generated method stub
		User findResult=userInfoDao.findByUsername(usr.getUsername());
		if(findResult==null){
			System.out.println("findResult"+findResult==null);
			if(usr.getPassword().equals(repassword)){
				userInfoDao.UserAdd(usr);
				return USER_ADD_SUCCESS;
			}else {
				return USER_REPEAT_PASSWORD_NOT_MATCH;
			}
			
			
		}
		else {
			return USER_EXITS;
		}
	}

	@Override
	public User findUser(User u)
	{
		User user=userInfoDao.findByUsername(u.getUsername());
		
		return user;
		
	}
	
	//登入注册
	@Override
	public User findlogin(User u) {
		 User user=userInfoDao.findByUsernameAndPassWord(u);
		return user;
	}

	@Override
	public void insertRegister(User u) {
		userInfoDao.UserAdd(u);
		}

	@Override
	public User findUserByName(String username) {
		// TODO Auto-generated method stub
		
		return userInfoDao.findByUsername(username);
	}

	@Override
	public boolean modifyUserInfo(User u) {
		// TODO Auto-generated method stub
		if(u!=null) {
			User userFinded=findUserByName(u.getUsername());
			if(u.getUsername()==null) {
				u.setUsername(userFinded.getUsername());
			}
			
			if(u.getPassword()==null) {
					u.setPassword(userFinded.getPassword());		
						}
			if(u.getUsex()==null) {
				u.setUsex(userFinded.getUsex());
			}
			if(u.getUage()==null) {
				u.setUage(userFinded.getUage());
			}
			if(u.getUtel()==null) {
				u.setUage(userFinded.getUtel());
			}
			userInfoDao.modifyUserInfo(u);
			return true;
		}
		return false;
	}
	
	

}
