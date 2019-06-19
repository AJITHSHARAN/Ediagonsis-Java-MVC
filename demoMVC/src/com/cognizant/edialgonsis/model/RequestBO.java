package com.cognizant.edialgonsis.model;

import java.util.List;

public class RequestBO {

	public boolean insertRequest(Request req) {
		boolean res;
		RequestBAO rdao=new RequestBAO();
		res=rdao.insertRequest(req);
		return res;
	}

	public List<Request> fetchRequest(String name, int docid) {
		// TODO Auto-generated method stub
		RequestBAO reqdao=new RequestBAO();
	List<Request> list=reqdao.fetchRequest(name,docid);
	return list;
}
}
