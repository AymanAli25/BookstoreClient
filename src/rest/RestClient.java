package rest;

import javax.ws.rs.*;
import javax.ws.rs.client.*;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.MediaType;

public class RestClient {

	public static void main(String[] argv){
		//create a client
		Client client = ClientBuilder.newClient();
		//create a web target
		WebTarget wt=client.target("http://localhost:8080/Bookstore/rest/GetOrder/product/");
		//add the query parameter
		wt.queryParam("productId", "b002");	
		//create a request and invoke get; the argument of get is the type of return
		String orders = wt.request(MediaType.APPLICATION_XML_TYPE).get(String.class);
		System.out.println(orders);
		

		
		client.close();	
	}
}

