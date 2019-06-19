package com.cognizant.edialgonsis.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.cognizant.edialgonsis.util.DbConnector;

public class PopulateDAO {

	

	public List<String> populate(String medval) {
		List<String> medlist=new ArrayList<String>();
		Connection conn=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		try
		{
		conn=DbConnector.getConnection();
		ps=conn.prepareStatement("select firstname from doctor where medicare_service_id in(select medicare_services_id from medicare_services where medicare_service=?)");
		ps.setString(1, medval);
		rs=ps.executeQuery();
		while(rs.next())
		{
		medlist.add(rs.getString(1));
		}
		}
		catch(SQLException e)
		{
		e.printStackTrace();
		}
		catch(ClassNotFoundException e)
		{
		e.printStackTrace();
		}
		return medlist;

	}

}
