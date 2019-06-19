package com.cognizant.edialgonsis.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.cognizant.edialgonsis.util.DbConnector;

public class RequestBAO {

	public boolean insertRequest(Request req) {
		{
			Connection conn=null;
			PreparedStatement st=null;
			PreparedStatement st1=null;
			ResultSet rs=null;
			boolean result=false;
			
			try
			{
				conn=DbConnector.getConnection();
				st1=conn.prepareStatement("select seq_request.nextval from dual");
				rs=st1.executeQuery();
				rs.next();
				int request_id=rs.getInt(1);
				st=conn.prepareStatement("insert into request(request_id ,medicare_service_id,doctor_id,rdate,customer_id)values(?,?,?,?,?)");
			st.setInt(1,request_id);	
			st.setInt(2, req.getMedicare_id());
			st.setInt(3, req.getDoctor_id());
			st.setString(4, req.getDate());
			st.setInt(5, req.getCustomer_id());
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

	public List<Request> fetchRequest(String name, int docid) {
		Connection conn=null;
		ResultSet rs=null;
		PreparedStatement st=null;
		List<Request> doclist=new ArrayList<>();
		try
		{ 	conn=DbConnector.getConnection();
		st=conn.prepareStatement("select * from request where doctor_id=?");
		st.setInt(1, docid);
		rs=st.executeQuery();
       while(rs.next())
       {
    	   Request u=new Request();
    	   u.setRequest_id(rs.getInt(1));
    	   u.setMedicare_id(rs.getInt(2));
    	   u.setDoctor_id(rs.getInt(3));
    	   u.setStatus(rs.getString(4));
    	   u.setDate(rs.getString(5));
    	   doclist.add(u);
    	  }
		}
		catch(Exception e)
		{
		e.printStackTrace();	
		}
		return doclist;
		}

	public void updateStatus(int id) {
		
		Connection conn=null;
		PreparedStatement st=null;
		PreparedStatement st1=null;
		ResultSet rs=null;
		boolean result=false;
		String status="accepted";
		try
		{
			conn=DbConnector.getConnection();
	
			st=conn.prepareStatement("update request set status=? where request_id=?");	
		st.setString(1, status);
		st.setInt(2, id);
		rs=st.executeQuery();
		if(rs.next())
			result=true;
		}
		catch(Exception e )
		{
		e.printStackTrace();
	}

}
	}

	


