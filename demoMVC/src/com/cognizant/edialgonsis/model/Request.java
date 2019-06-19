package com.cognizant.edialgonsis.model;

public class Request {
	private

	int doctor_id;
	int medicare_id;
	String date;
	String status;
	int request_id;
	int customer_id;
	public int getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(int customer_id) {
		this.customer_id = customer_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getRequest_id() {
		return request_id;
	}
	public void setRequest_id(int request_id) {
		this.request_id = request_id;
	}
	public int getDoctor_id() {
		return doctor_id;
	}
	public void setDoctor_id(int doctor_id) {
		this.doctor_id = doctor_id;
	}
	public int getMedicare_id() {
		return medicare_id;
	}
	public void setMedicare_id(int medicare_id) {
		this.medicare_id = medicare_id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

}
