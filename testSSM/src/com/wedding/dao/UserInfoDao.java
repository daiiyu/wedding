package com.wedding.dao;

import java.util.List;

import com.wedding.model.User;

public interface UserInfoDao {
	public void UserAdd(User u);

	public void UserDelete(int id);

	public void UserUpdate(User u);

	public User findById(int id);

	public List<User> findAll();

	public User findByUsernameAndPassWord(User u);
	
	public User findByUsername(String username);
	public boolean modifyUserInfo(User u);
}
