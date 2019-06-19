package com.cognizant.edialgonsis.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cognizant.edialgonsis.model.DoctorBO;
import com.cognizant.edialgonsis.model.Medicare_Services;
import com.cognizant.edialgonsis.model.PopulateBO;

/**
 * Servlet implementation class CheckupController
 */
public class CheckupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckupController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		DoctorBO docbo=new DoctorBO();
		String name=request.getParameter("name");
		System.out.println("name"+name);
		RequestDispatcher dispatcher=null;
		HttpSession session=request.getSession();
		List<Medicare_Services> medlist=docbo.fetchdoc();
		

		session.setAttribute("cusname", name);
		request.setAttribute("medlist", medlist);
		dispatcher=request.getRequestDispatcher("raise_checkup.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		List<String> medlist=null;
		RequestDispatcher dispatcher=null;
		
		String medval=request.getParameter("medVal");
		System.out.println(medval);
		PopulateBO popbo=new PopulateBO();
		medlist=popbo.populate(medval);
		System.out.println("List in controller......."+medlist);
		request.setAttribute("medlist", medlist);
		dispatcher=request.getRequestDispatcher("popup.jsp");
		dispatcher.forward(request, response);
		
	}

}
