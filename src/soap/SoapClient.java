package soap;

import java.rmi.RemoteException;

public class SoapClient {
	
	public static void main(String[] args) throws RemoteException {
		
		ProductCatalog pc = new ProductCatalogProxy("http://localhost:8080/Bookstore/services/ProductCatalog");
		
		System.out.println(pc.getProductInfo("b001"));
	}

}
