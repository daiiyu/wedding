package com.wedding.service;

import com.wedding.model.User;

public interface UserInfoService {
	
	int USER_EXITS=-1;
	int USER_NOT_EXITS=-2;
	int USER_REPEAT_PASSWORD_NOT_MATCH=-3;
	int USER_ADD_SUCCESS=1;
	public User findUser(User u);
    public User findlogin(User u);
    public User findUserByName(String username);
    public void insertRegister(User u);
	public int addUser(User usr,String repassword);
	public boolean modifyUserInfo(User u);
}
