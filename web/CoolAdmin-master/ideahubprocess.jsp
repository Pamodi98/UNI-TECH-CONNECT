<%-- 
    Document   : ideahubprocess
    Created on : Jul 14, 2018, 1:40:37 PM
    Author     : wathm
--%>

<%@page import="dbConnect.DbConnect"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
    

String subject=request.getParameter("title");
String user=request.getParameter("user");

String content=request.getParameter("content");
try{
     Connection conn =DbConnect.ConnectDb();
     String query="insert into ideahub (user,title,body)values(?,?,?) ";
     PreparedStatement pst=conn.prepareStatement(query);
     pst.setString(1, user);
     pst.setString(2,subject);
     pst.setString(3,content);
     pst.executeUpdate();
    out.print("<h1><center>POST ADDED SUCCESSFULLY, TO EXPLORE MORE GO BACK </center></h1>");
     
     
     
 }catch(Exception e){
     out.print(e);
 } 






%>
