package com.wedding.model;

public class Camera {
	
	private int ca_id;
	private String ca_name;
	private String ca_introduce;
	private String ca_tel;
	private String ca_sex;
public int getCa_id() {
		return ca_id;
	}
	public void setCa_id(int ca_id) {
		this.ca_id = ca_id;
	}
	public String getCa_name() {
		return ca_name;
	}
	public void setCa_name(String ca_name) {
		this.ca_name = ca_name;
	}
	public String getCa_introduce() {
		return ca_introduce;
	}
	public void setCa_introduce(String ca_introduce) {
		this.ca_introduce = ca_introduce;
	}
	public String getCa_tel() {
		return ca_tel;
	}
	public void setCa_tel(String ca_tel) {
		this.ca_tel = ca_tel;
	}
	public String getCa_sex() {
		return ca_sex;
	}
	public void setCa_sex(String ca_sex) {
		this.ca_sex = ca_sex;
	}
	public int getCa_price() {
		return ca_price;
	}
	public void setCa_price(int ca_price) {
		this.ca_price = ca_price;
	}
private int ca_price;
}