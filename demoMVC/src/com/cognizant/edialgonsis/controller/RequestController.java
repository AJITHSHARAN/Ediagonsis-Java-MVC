package com.cognizant.edialgonsis.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cognizant.edialgonsis.model.CustomerBO;
import com.cognizant.edialgonsis.model.DoctorBO;
import com.cognizant.edialgonsis.model.MedicareBO;
import com.cognizant.edialgonsis.model.Request;
import com.cognizant.edialgonsis.model.RequestBO;

/**
 * Servlet implementation class RequestController
 */
public class RequestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequestController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cusname=request.getParameter("cusname");
		CustomerBO cbo=new CustomerBO();
		System.out.println(cusname);
		int cusid=cbo.getCusId(cusname);
		System.out.println(cusid);
		String mname=request.getParameter("mname");
		String dname=request.getParameter("dname");
		String date=request.getParameter("date");
		DoctorBO bo=new DoctorBO();
		MedicareBO bo1=new MedicareBO(); 
		int medId=bo1.getMedicareID(mname);
		int docId=bo.getDoctorID(dname);
		System.out.println(medId);
		System.out.println(docId);
		Request req=new Request();
		req.setDoctor_id(docId);
		req.setMedicare_id(medId);
		req.setDate(date);
		req.setCustomer_id(cusid);
		RequestBO rbo=new RequestBO();
		boolean res=rbo.insertRequest(req);
		RequestDispatcher dispatcher=null;
		HttpSession session=request.getSession();
       if(res)
       {
    	   session.setAttribute("status", "sucessfully request raised");
    	   dispatcher=request.getRequestDispatcher("status.jsp");
    	   dispatcher.forward(request, response);
       }
       else
       {
    	   session.setAttribute("status", "not sucessfully request raised");
    	   dispatcher=request.getRequestDispatcher("status.jsp");
    	   dispatcher.forward(request, response);
       }
	}

}
