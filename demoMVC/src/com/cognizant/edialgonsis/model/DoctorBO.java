package com.cognizant.edialgonsis.model;

import java.util.List;





public class DoctorBO {

	public boolean validateUser(String name, String passwd) {
		DoctorDAO doctordao = new DoctorDAO();
		boolean result=doctordao.validateUser(name, passwd);
	return result;
	}

	public boolean insertDoctor(Doctor doctor) {
		DoctorDAO doctordao=new DoctorDAO();
		boolean res=doctordao.insertDoctor(doctor);
		return res;
	}

	public List fetchdoc() {
		DoctorDAO docdao=new DoctorDAO();
		List doclist=docdao.fetchDoc();
		return doclist;
	}

	public int getDoctorID(String dname) {
		int dId;
		DoctorDAO bao=new DoctorDAO();
		dId=bao.getDoctorID(dname);
		// TODO Auto-generated method stub
		return dId;
	}

	public int getDoctorId1(String name) {
		// TODO Auto-generated method stub
		int dId;
		DoctorDAO bao=new DoctorDAO();
		dId=bao.getDoctorID1(name);
		// TODO Auto-generated method stub
		return dId;
		
	}

	public List<Doctor> fetchdoctor() {
		DoctorDAO docdao=new DoctorDAO();
		List<Doctor> doclist=docdao.fetchDoctor();
		return doclist;
	}



}
