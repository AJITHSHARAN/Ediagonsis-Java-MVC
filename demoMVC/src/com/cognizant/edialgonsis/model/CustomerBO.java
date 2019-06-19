package com.cognizant.edialgonsis.model;

public class CustomerBO {
public boolean validateUser(String username,String password)
{
	CustomerDAO userdao = new CustomerDAO();
	boolean result=userdao.validateUser(username, password);
return result;
}

public boolean insertCustomer(Customer customer) {
	CustomerDAO customerdao=new CustomerDAO();
	boolean res=customerdao.insertCustomer(customer);
	return res;
	// TODO Auto-generated method stub
	
}

public int getCusId(String cusname) {
	int dId;
	CustomerDAO bao=new CustomerDAO();
	dId=bao.getDoctorID(cusname);
	// TODO Auto-generated method stub
	return dId;
}

}
