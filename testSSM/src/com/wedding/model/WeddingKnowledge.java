package com.wedding.model;

public class WeddingKnowledge {
       private int wk_id;
       private int m_id;
       public int getWk_id() {
		return wk_id;
	}
	public void setWk_id(int wk_id) {
		this.wk_id = wk_id;
	}
	public int getM_id() {
		return m_id;
	}
	public void setM_id(int m_id) {
		this.m_id = m_id;
	}
	public String getWk_name() {
		return wk_name;
	}
	public void setWk_name(String wk_name) {
		this.wk_name = wk_name;
	}
	public String getWk_introduce() {
		return wk_introduce;
	}
	public void setWk_introduce(String wk_introduce) {
		this.wk_introduce = wk_introduce;
	}
	private String wk_name;
       private String wk_introduce;
}
