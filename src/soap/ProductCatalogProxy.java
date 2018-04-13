package soap;

public class ProductCatalogProxy implements soap.ProductCatalog {
  private String _endpoint = null;
  private soap.ProductCatalog productCatalog = null;
  
  public ProductCatalogProxy() {
    _initProductCatalogProxy();
  }
  
  public ProductCatalogProxy(String endpoint) {
    _endpoint = endpoint;
    _initProductCatalogProxy();
  }
  
  private void _initProductCatalogProxy() {
    try {
      productCatalog = (new soap.ProductCatalogServiceLocator()).getProductCatalog();
      if (productCatalog != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)productCatalog)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)productCatalog)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (productCatalog != null)
      ((javax.xml.rpc.Stub)productCatalog)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public soap.ProductCatalog getProductCatalog() {
    if (productCatalog == null)
      _initProductCatalogProxy();
    return productCatalog;
  }
  
  public soap.BookWrapper getProductInfo(java.lang.String id) throws java.rmi.RemoteException{
    if (productCatalog == null)
      _initProductCatalogProxy();
    return productCatalog.getProductInfo(id);
  }
  
  
}