<%-- 
    Document   : deletevendor
    Created on : 9 Aug, 2021, 6:14:34 PM 
    Author     : Mrityunjay Upadhyay
    Project    : MMMUT
--%>

<%@page import="mypack.DbManager"%>
<% 
    String emailaddress=request.getParameter("emailaddress");
    DbManager dm=new DbManager();
    String query="delete from register where emailaddress='"+emailaddress+"'";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Vendor is deleted! Successfully...');window.location.href='../vendors.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Vendor is not deleted!');window.location.href='../vendors.jsp';</script>");
    }
%>

