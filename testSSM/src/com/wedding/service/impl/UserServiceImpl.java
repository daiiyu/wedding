package com.wedding.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wedding.dao.FreeOrderDao;
import com.wedding.dao.UserDao;
import com.wedding.model.Camera;
import com.wedding.model.Flower;
import com.wedding.model.Host;
import com.wedding.model.MainCar;
import com.wedding.model.User;
import com.wedding.model.UsherCar;
import com.wedding.model.WeddingGown;
import com.wedding.service.UserService;
@Service(value="userService")
public class UserServiceImpl implements UserService{
  
	@Autowired
	private UserDao userDao;
	@Autowired
	private FreeOrderDao freeOrderDao;
	
	
	//����ע��
	@Override
	public User findlogin(User u) {						
		 User user=userDao.findByUsernameAndPassWord(u);
		return user;
	}
public Host findHostByName(Host h) {

	  Host host=freeOrderDao.findHost(h);
	
	  return host;
}
 public Camera findCameraByName(Camera c) {
	 Camera ca=freeOrderDao.findCamera(c);
	 return ca;
 }
 public WeddingGown findGwonByName(WeddingGown w) {
	 WeddingGown we=freeOrderDao.findWeddingGown(w);
	 return we;
 }
@Override
public Flower FindFlowerByName(Flower f) {
	Flower fl=freeOrderDao.findFlower(f);
	return fl;
}
@Override
public MainCar findMainCarByName(MainCar m) {
	MainCar ma=freeOrderDao.findMainCar(m);
	return ma;
}

@Override
public UsherCar findUSherCarByName(UsherCar u) {
	UsherCar uc=freeOrderDao.findUsherCar(u);
	return uc;
}

@Override
public User findUderByname(User u) {
	User us=new User();
	us=userDao.findByname(u);
	return us;
}

}
