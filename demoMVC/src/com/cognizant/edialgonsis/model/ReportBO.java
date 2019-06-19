package com.cognizant.edialgonsis.model;
import java.util.*;


public class ReportBO {

	public List<Integer> getIDs(int id) {
		ReportDAO dao=new ReportDAO();
		List<Integer> list=dao.getIDs(id);
		return list;
	}

	public boolean insertReport(Report report) {
		ReportDAO dao1=new ReportDAO();
	boolean res=dao1.insertReport(report);
	return res;
	}

	public List<Report> getList(int id) {
		// TODO Auto-generated method stub
		ReportDAO dao=new ReportDAO();
		List<Report> list=dao.getList(id);
		return list;
	}

	

}
