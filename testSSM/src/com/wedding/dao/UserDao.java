package com.wedding.dao;

import java.util.List;

import com.wedding.model.FreeOrder;
import com.wedding.model.Manager;
import com.wedding.model.User;

public interface UserDao {
	public void UserAdd(User u);

	public void UserDelete(int userid);

	public void UserUpdate(User u);

	public User findById(int userid);

	public List<User> findAll();

	public User findByUsernameAndPassWord(User u);
	public FreeOrder UserFindOrder(int userid);
	
    public Manager findManagerByNameAndPassword(Manager ma);
    public User findByname(User u);
}

