<%@page contentType="text/html;charset=UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<HTML>
<HEAD>
<TITLE>Result</TITLE>
</HEAD>
<BODY>
<H1>Result</H1>

<jsp:useBean id="sampleProductCatalogProxyid" scope="session" class="soap.ProductCatalogProxy" />
<%
if (request.getParameter("endpoint") != null && request.getParameter("endpoint").length() > 0)
sampleProductCatalogProxyid.setEndpoint(request.getParameter("endpoint"));
%>

<%
String method = request.getParameter("method");
int methodID = 0;
if (method == null) methodID = -1;

if(methodID != -1) methodID = Integer.parseInt(method);
boolean gotMethod = false;

try {
switch (methodID){ 
case 2:
        gotMethod = true;
        java.lang.String getEndpoint2mtemp = sampleProductCatalogProxyid.getEndpoint();
if(getEndpoint2mtemp == null){
%>
<%=getEndpoint2mtemp %>
<%
}else{
        String tempResultreturnp3 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(getEndpoint2mtemp));
        %>
        <%= tempResultreturnp3 %>
        <%
}
break;
case 5:
        gotMethod = true;
        String endpoint_0id=  request.getParameter("endpoint8");
            java.lang.String endpoint_0idTemp = null;
        if(!endpoint_0id.equals("")){
         endpoint_0idTemp  = endpoint_0id;
        }
        sampleProductCatalogProxyid.setEndpoint(endpoint_0idTemp);
break;
case 10:
        gotMethod = true;
        soap.ProductCatalog getProductCatalog10mtemp = sampleProductCatalogProxyid.getProductCatalog();
if(getProductCatalog10mtemp == null){
%>
<%=getProductCatalog10mtemp %>
<%
}else{
        if(getProductCatalog10mtemp!= null){
        String tempreturnp11 = getProductCatalog10mtemp.toString();
        %>
        <%=tempreturnp11%>
        <%
        }}
break;
case 13:
        gotMethod = true;
        String id_1id=  request.getParameter("id32");
            java.lang.String id_1idTemp = null;
        if(!id_1id.equals("")){
         id_1idTemp  = id_1id;
        }
        soap.BookWrapper getProductInfo13mtemp = sampleProductCatalogProxyid.getProductInfo(id_1idTemp);
if(getProductInfo13mtemp == null){
%>
<%=getProductInfo13mtemp %>
<%
}else{
%>
<TABLE>
<TR>
<TD COLSPAN="3" ALIGN="LEFT">returnp:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD COLSPAN="2" ALIGN="LEFT">bookBean:</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">url:</TD>
<TD>
<%
if(getProductInfo13mtemp != null){
bean.BookBean tebece0=getProductInfo13mtemp.getBookBean();
if(tebece0 != null){
java.lang.String typeurl18 = tebece0.getUrl();
        String tempResulturl18 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeurl18));
        %>
        <%= tempResulturl18 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">bid:</TD>
<TD>
<%
if(getProductInfo13mtemp != null){
bean.BookBean tebece0=getProductInfo13mtemp.getBookBean();
if(tebece0 != null){
java.lang.String typebid20 = tebece0.getBid();
        String tempResultbid20 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typebid20));
        %>
        <%= tempResultbid20 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">author:</TD>
<TD>
<%
if(getProductInfo13mtemp != null){
bean.BookBean tebece0=getProductInfo13mtemp.getBookBean();
if(tebece0 != null){
java.lang.String typeauthor22 = tebece0.getAuthor();
        String tempResultauthor22 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeauthor22));
        %>
        <%= tempResultauthor22 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">about:</TD>
<TD>
<%
if(getProductInfo13mtemp != null){
bean.BookBean tebece0=getProductInfo13mtemp.getBookBean();
if(tebece0 != null){
java.lang.String typeabout24 = tebece0.getAbout();
        String tempResultabout24 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typeabout24));
        %>
        <%= tempResultabout24 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">price:</TD>
<TD>
<%
if(getProductInfo13mtemp != null){
bean.BookBean tebece0=getProductInfo13mtemp.getBookBean();
if(tebece0 != null){
%>
<%=tebece0.getPrice()
%><%}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">category:</TD>
<TD>
<%
if(getProductInfo13mtemp != null){
bean.BookBean tebece0=getProductInfo13mtemp.getBookBean();
if(tebece0 != null){
java.lang.String typecategory28 = tebece0.getCategory();
        String tempResultcategory28 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typecategory28));
        %>
        <%= tempResultcategory28 %>
        <%
}}%>
</TD>
<TR>
<TD WIDTH="5%"></TD>
<TD WIDTH="5%"></TD>
<TD COLSPAN="1" ALIGN="LEFT">title:</TD>
<TD>
<%
if(getProductInfo13mtemp != null){
bean.BookBean tebece0=getProductInfo13mtemp.getBookBean();
if(tebece0 != null){
java.lang.String typetitle30 = tebece0.getTitle();
        String tempResulttitle30 = org.eclipse.jst.ws.util.JspUtils.markup(String.valueOf(typetitle30));
        %>
        <%= tempResulttitle30 %>
        <%
}}%>
</TD>
</TABLE>
<%
}
break;
}
} catch (Exception e) { 
%>
Exception: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.toString()) %>
Message: <%= org.eclipse.jst.ws.util.JspUtils.markup(e.getMessage()) %>
<%
return;
}
if(!gotMethod){
%>
result: N/A
<%
}
%>
</BODY>
</HTML>