package com.cognizant.edialgonsis.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.cognizant.edialgonsis.model.AdminBO;
import com.cognizant.edialgonsis.model.DoctorBO;
import com.cognizant.edialgonsis.model.Request;
import com.cognizant.edialgonsis.model.RequestBO;

/**
 * Servlet implementation class DoctorLogin
 */
public class DoctorLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoctorLogin() {
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
		String name=request.getParameter("email");
		String passwd=request.getParameter("password");
		DoctorBO doctorbo=new DoctorBO();
		boolean result=doctorbo.validateUser(name,passwd);
		RequestDispatcher dispatcher=null;
		HttpSession session=request.getSession();
		System.out.println(result);
		
		if(result)
		{
			
			session.setAttribute("name", name);
			RequestBO bo=new RequestBO();
			DoctorBO bo1=new DoctorBO();
			int docid=bo1.getDoctorId1(name);
			System.out.println(docid);
			List<Request> reqlist =bo.fetchRequest(name,docid);
			System.out.println(reqlist);
			session.setAttribute("reqlist", reqlist);
			dispatcher=request.getRequestDispatcher("DoctorLanding.jsp");
			dispatcher.forward(request, response);
		}
		else
		{
			dispatcher=request.getRequestDispatcher("login.jsp");
			request.setAttribute("msg", "Invalid username/password");
			dispatcher.forward(request, response);
		}
		
	}
	}


