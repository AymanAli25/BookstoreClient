/**
 * BookWrapper.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package soap;

public class BookWrapper  implements java.io.Serializable {
    private bean.BookBean bookBean;

    public BookWrapper() {
    }

    public BookWrapper(
           bean.BookBean bookBean) {
           this.bookBean = bookBean;
    }


    /**
     * Gets the bookBean value for this BookWrapper.
     * 
     * @return bookBean
     */
    public bean.BookBean getBookBean() {
        return bookBean;
    }


    /**
     * Sets the bookBean value for this BookWrapper.
     * 
     * @param bookBean
     */
    public void setBookBean(bean.BookBean bookBean) {
        this.bookBean = bookBean;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof BookWrapper)) return false;
        BookWrapper other = (BookWrapper) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.bookBean==null && other.getBookBean()==null) || 
             (this.bookBean!=null &&
              this.bookBean.equals(other.getBookBean())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getBookBean() != null) {
            _hashCode += getBookBean().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(BookWrapper.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://soap", "BookWrapper"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("bookBean");
        elemField.setXmlName(new javax.xml.namespace.QName("http://soap", "bookBean"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://bean", "BookBean"));
        elemField.setNillable(true);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

	@Override
	public String toString() {
		String re = "Title: " + bookBean.getTitle() + "\n"
				+ "Author: " + bookBean.getAuthor() + "\n"
				+ "Bid: " + bookBean.getBid() + "\n"
				+ "Category: " +  bookBean.getCategory() + "\n"
				+ "Url: " + bookBean.getUrl() + "\n"
				+ "About: " + bookBean.getAbout() + "\n";
		
		return re;
	}

    
}
