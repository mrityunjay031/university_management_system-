<%-- 
    Document   : notificationcode
    Created on : 9 Aug, 2021, 2:08:29 PM
    Author     : Mrityunjay Upadhyay
    pROJECT    : MMMUT
--%>
<%@page import="mypack.DbManager"%>
<%
    String notificationtext=request.getParameter("notificationtext");
    DbManager dm=new DbManager();
    String posteddate=dm.getDate();
    String query="insert into notification(notificationtext,posteddate) values('"+notificationtext+"','"+posteddate+"')";
    if(dm.nonQuery(query)==true)
    {
        out.print("<script>alert('Notification is posted!');window.location.href='../adminhome.jsp';</script>");
    }
    else
    {
        out.print("<script>alert('Notification is not posted!');window.location.href='../adminhome.jsp';</script>");
    }
    
    
    
    
    
    
 %>
 
