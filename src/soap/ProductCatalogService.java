/**
 * ProductCatalogService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package soap;

public interface ProductCatalogService extends javax.xml.rpc.Service {
    public java.lang.String getProductCatalogAddress();

    public soap.ProductCatalog getProductCatalog() throws javax.xml.rpc.ServiceException;

    public soap.ProductCatalog getProductCatalog(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
