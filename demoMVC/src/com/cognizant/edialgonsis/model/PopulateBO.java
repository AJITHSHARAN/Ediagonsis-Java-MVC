package com.cognizant.edialgonsis.model;

import java.util.List;

public class PopulateBO {

	

	public List<String> populate(String medval) {
		// TODO Auto-generated method stub
		 PopulateDAO popdao=new PopulateDAO();
		    List<String> list=popdao.populate(medval);
		return list;
	}

}
