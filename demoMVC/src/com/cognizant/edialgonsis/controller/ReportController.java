package com.cognizant.edialgonsis.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cognizant.edialgonsis.model.Report;
import com.cognizant.edialgonsis.model.ReportBO;
import com.cognizant.edialgonsis.model.RequestBAO;
import com.cognizant.edialgonsis.model.RequestBO;

/**
 * Servlet implementation class ReportController
 */
public class ReportController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReportController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	int id=Integer.parseInt(request.getParameter("mid"));
	System.out.println(id);
	RequestBAO req=new RequestBAO();
	req.updateStatus(id);
	request.setAttribute("request_id",id);
	RequestDispatcher dispatcher=null;
	HttpSession session=request.getSession();
	dispatcher=request.getRequestDispatcher("Reportform.jsp");
	dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sdate=request.getParameter("sdate");
		String rdate=request.getParameter("rdate");
		int id=Integer.parseInt(request.getParameter("request_id"));
		int act1=Integer.parseInt(request.getParameter("act1"));
		int nor1=Integer.parseInt(request.getParameter("nor1"));
		int act2=Integer.parseInt(request.getParameter("act2"));
		int nor2=Integer.parseInt(request.getParameter("nor2"));
		int act3=Integer.parseInt(request.getParameter("act3"));
		int nor3=Integer.parseInt(request.getParameter("nor3"));
		Report report = new Report();
		
		report.setRdate(rdate);
		report.setSdate(sdate);
		report.setAct1(act1);
		report.setAct2(act2);
		report.setAct3(act3);
		report.setNor1(nor1);
		report.setNor2(nor2);
		report.setNor3(nor3);
		ReportBO bo = new ReportBO();
		List<Integer> list=bo.getIDs(id);
		System.out.println(list);
//		System.out.println(id);
		int cid=list.get(0);
		int did=list.get(1);
		int mid=list.get(2);
		report.setCid(cid);
		report.setDid(did);
		report.setMid(mid);
		
//		System.out.println(report.getCid());
//		System.out.println(report.getDid());
//		System.out.println(report.getMid());
//		
//		System.out.println( report.getSdate());
//		System.out.println( report.getRdate());
//		System.out.println(report.getAct1());
//		System.out.println(report.getNor1());
//		System.out.println(report.getAct2());
//		System.out.println(report.getNor2());
//		System.out.println( report.getAct3());
//		System.out.println(report.getNor3());
		ReportBO bo1 = new ReportBO();
		boolean res=bo1.insertReport(report);
		if(res)
		{
			HttpSession session=request.getSession();
			session.setAttribute("sucessfully generated", "reportstatus");
			RequestDispatcher dispatcher=null;
			dispatcher=request.getRequestDispatcher("ReportStatus.jsp");
			dispatcher.forward(request, response);	
		}
	}
	

}
