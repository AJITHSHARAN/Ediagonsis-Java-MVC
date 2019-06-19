package com.cognizant.edialgonsis.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cognizant.edialgonsis.util.DbConnector;

public class ReportDAO {

	public List<Integer> getIDs(int id) {
		Connection conn=null;
		ResultSet rs=null;
		ResultSet rs1=null;
		ResultSet rs2=null;
		PreparedStatement st=null;
		PreparedStatement st1=null;
		PreparedStatement st2=null;
		List<Integer> reqlist=new ArrayList<>();
		System.out.println(id);
		try
		{ 	conn=DbConnector.getConnection();
		st=conn.prepareStatement("select customer_id from request where request_id=?");
		st.setInt(1, id);
		rs=st.executeQuery();
       while(rs.next())
       {
    	   System.out.println(rs.getInt(1));
    	   reqlist.add(rs.getInt(1));
    	  }
		st2=conn.prepareStatement("select doctor_id from request where request_id=?");
		st2.setInt(1, id);
		rs2=st2.executeQuery();
     while(rs2.next())
     {
    	 System.out.println(rs2.getInt(1));
  	   reqlist.add(rs2.getInt(1));
  	  }
     st1=conn.prepareStatement("select medicare_service_id from request where request_id=?");
		st1.setInt(1, id);
		rs1=st1.executeQuery();
     while(rs1.next())
    {
     	System.out.println(rs1.getInt(1));
	   reqlist.add(rs1.getInt(1));
	  }
       
		}
		catch(Exception e)
		{
		e.printStackTrace();	
		}
		return reqlist;
	}

	public boolean insertReport(Report report) {
		{
			Connection conn=null;
			PreparedStatement st=null;
			PreparedStatement st1=null;
			ResultSet rs=null;
			boolean result=false;
			
			try
			{
				conn=DbConnector.getConnection();
				st1=conn.prepareStatement("select seq_report.nextval from dual");
				rs=st1.executeQuery();
				rs.next();
				int repid=rs.getInt(1);
				st=conn.prepareStatement("insert into report(report_id ,customer_id ,doctor_id ,medicare_services_id ,service_date ,test_result_date ,diag1_act ,diag1_normal ,diag2_act,diag2_normal,diag3_act,diag3_normal) values(?,?,?,?,?,?,?,?,?,?,?,?)");
			st.setInt(1, repid);
			
			st.setInt(2, report.getCid());
			st.setInt(3, report.getDid());
			st.setInt(4, report.getMid());
			
			st.setString(5, report.getSdate());
			st.setString(6, report.getRdate());
			st.setInt(7, report.getAct1());
			st.setInt(8, report.getNor1());
			st.setInt(9, report.getAct2());
			st.setInt(10, report.getNor2());
			st.setInt(11, report.getAct3());
			st.setInt(12, report.getNor3());
			
			rs=st.executeQuery();
			if(rs.next())
				result=true;
			}
			catch(Exception e )
			{
			e.printStackTrace();
		}
			return result;
	}

	}

	public List<Report> getList(int id) {
			Connection conn=null;
			ResultSet rs=null;
			PreparedStatement st=null;
			List<Report> replist=new ArrayList<>();
			try
			{ 	conn=DbConnector.getConnection();
			st=conn.prepareStatement("select * from Report where customer_id=?");
			st.setInt(1, id);
			rs=st.executeQuery();
	       while(rs.next())
	       {
	    	   Report u=new Report();
	    	
	    	   u.setDid(rs.getInt(3));
	    	   u.setMid(rs.getInt(4));
	    	   u.setRdate(rs.getString(5));
	    	   u.setSdate(rs.getString(6));
	    	   u.setAct1(rs.getInt(7));
	    	   u.setNor1(rs.getInt(8));
	    	   u.setAct2(rs.getInt(9));
	    	   u.setNor2(rs.getInt(10));
	    	   u.setAct3(rs.getInt(11));
	    	   u.setNor3(rs.getInt(12));
	    	   replist.add(u);
	    	  }
			}
			catch(Exception e)
			{
			e.printStackTrace();	
			}
			return replist;
			}
	}


