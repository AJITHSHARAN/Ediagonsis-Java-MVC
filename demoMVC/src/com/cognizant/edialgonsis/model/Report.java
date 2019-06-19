package com.cognizant.edialgonsis.model;

public class Report {
	private
	int cid;
	int mid;
	int did;
	
	String sdate;
	String rdate;
	int act1;
	int  nor1;
	int act2;
	int  nor2;
	int act3;
	int  nor3;
	private int s;
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getDid() {
		return did;
	}
	public void setDid(int did) {
		this.did = did;
	}
	public String getSdate() {
		return sdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getRdate() {
		return rdate;
	}
	public void setRdate(String rdate) {
		this.rdate = rdate;
	}
	public int getAct1() {
		return act1;
	}
	public void setAct1(int act1) {
		this.act1 = act1;
	}
	public int getNor1() {
		return nor1;
	}
	public void setNor1(int nor1) {
		this.nor1 = nor1;
	}
	public int getAct2() {
		return act2;
	}
	public void setAct2(int act2) {
		this.act2 = act2;
	}
	public int getNor2() {
		return nor2;
	}
	public void setNor2(int nor2) {
		this.nor2 = nor2;
	}
	public int getAct3() {
		return act3;
	}
	public void setAct3(int act3) {
		this.act3 = act3;
	}
	public int getNor3() {
		return nor3;
	}
	public void setNor3(int nor3) {
		this.nor3 = nor3;
	}
	public void setReport_id(int repid) {
		this.s=repid;
	}
		// TODO Auto-generated method stub
		public int getReport_id() {
			return s;
	}
}
