package com.wedding.model;

public class WeddingGown {
     public int getWg_id() {
		return wg_id;
	}
	public void setWg_id(int wg_id) {
		this.wg_id = wg_id;
	}
	public int getO_id() {
		return o_id;
	}
	public void setO_id(int o_id) {
		this.o_id = o_id;
	}
	public String getWg_style() {
		return wg_style;
	}
	public void setWg_style(String wg_style) {
		this.wg_style = wg_style;
	}
	public int getWg_price() {
		return wg_price;
	}
	public void setWg_price(int wg_price) {
		this.wg_price = wg_price;
	}
	private int wg_id;
     private int o_id;
     private String wg_style;
     private int wg_price;
}
