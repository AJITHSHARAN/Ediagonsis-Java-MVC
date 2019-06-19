package com.cognizant.edialgonsis.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cognizant.edialgonsis.model.Customer;
import com.cognizant.edialgonsis.model.CustomerBO;
import com.cognizant.edialgonsis.model.Report;
import com.cognizant.edialgonsis.model.ReportBO;
import java.util.*;

/**
 * Servlet implementation class ViewReportController
 */
public class ViewReportController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewReportController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String name=request.getParameter("name");
		System.out.println(name);
		RequestDispatcher dispatcher=null;
		HttpSession session=request.getSession();
		ReportBO rbo=new ReportBO();
		CustomerBO bo=new CustomerBO();
		int id=bo.getCusId(name);
		System.out.println(id);
		List<Report> list=rbo.getList(id);
		System.out.println(list);
		session.setAttribute("replist", list);
		dispatcher=request.getRequestDispatcher("ViewReport.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
