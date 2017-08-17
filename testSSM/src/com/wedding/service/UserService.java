package com.wedding.service;

import com.wedding.model.Camera;
import com.wedding.model.Flower;
import com.wedding.model.Host;
import com.wedding.model.MainCar;
import com.wedding.model.User;
import com.wedding.model.UsherCar;
import com.wedding.model.WeddingGown;

public interface UserService {
     public User findlogin(User u);
 	  public Host findHostByName(Host h);
 	  public Camera findCameraByName(Camera c);
 	  public WeddingGown findGwonByName(WeddingGown w);
 	  public Flower FindFlowerByName(Flower f);
 	  public MainCar findMainCarByName(MainCar m);
 	  public UsherCar findUSherCarByName(UsherCar u);
 	  public User findUderByname(User u);
}

