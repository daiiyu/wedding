package com.wedding.dao;

import java.util.List;

import com.wedding.model.Camera;
import com.wedding.model.Flower;
import com.wedding.model.FreeOrder;
import com.wedding.model.Host;
import com.wedding.model.Hotel;
import com.wedding.model.MainCar;
import com.wedding.model.UsherCar;
import com.wedding.model.WeddingGown;

public interface FreeOrderDao {
	
	public Host findHost(Host host) ;//按名字查询
	public Camera findCamera(Camera c);
	public  Hotel findHotel(Hotel h);
	public MainCar findMainCar(MainCar m);
	public UsherCar findUsherCar(UsherCar u);
	public WeddingGown findWeddingGown(WeddingGown w);
	public Flower findFlower(Flower f);
	
	public  List<Host> findHostAll() ;//查询所有
	public List<Camera> findCameraAll() ;
	public List<Hotel> findHotelAll() ;
	public List<UsherCar> findUsherCarAll() ;
	public List<MainCar> findMainCarAll() ;
	public List<WeddingGown> findWeddingGownAll() ;
	public List<Flower> findFlowerAll();
	
	public void AddFreeOrder(FreeOrder fo);
	public FreeOrder findFreeOrder(FreeOrder fo);
}

