package com.wedding.dao;

import java.util.List;

import com.wedding.model.FreeOrder;

public interface ManagerDao {
	public FreeOrder managerFindOrder(int orderid);
	public List<FreeOrder> managerFindOrderAll();
}
