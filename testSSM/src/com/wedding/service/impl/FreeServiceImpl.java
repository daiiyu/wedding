package com.wedding.service.impl;

import java.util.List;

import com.wedding.dao.FreeOrderDao;
import com.wedding.model.Host;

public class FreeServiceImpl {
private FreeOrderDao fod;
   public List<Host> findhostAll(){
	   return fod.findHostAll();
   }
}
