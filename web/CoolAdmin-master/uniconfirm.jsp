<%-- 
    Document   : uniconfirm
    Created on : Jul 13, 2018, 9:22:51 PM
    Author     : wathm
--%>

<%@page import="dbConnect.DbConnect"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String user = request.getParameter("id");
String status = request.getParameter("id1");
String event =request.getParameter("id3");


try{
    
    Connection conn=DbConnect.ConnectDb();
    PreparedStatement pst;
    String query1="select * from confirm where user='"+user+"' and event='"+event+"'";
    pst=conn.prepareStatement(query1);
    ResultSet rs = pst.executeQuery();
   
    if(rs.next()){
       
            String query2 ="update confirm set status=? where user=? and event=?";
            pst=conn.prepareStatement(query2);
            pst.setString(1,status);
            pst.setString(2,user);
            pst.setString(3,event);
            pst.executeUpdate();
              RequestDispatcher rd = request.getRequestDispatcher("uniwebpage.jsp");
              rd.forward(request, response);
        }
        else
        {
            
            
              String query = "INSERT INTO confirm (event,user,status) VALUES(?,?,?)";
              pst=conn.prepareStatement(query);
              pst.setString(1,event);
              pst.setString(2,user);
              pst.setString(3,status);
              pst.executeUpdate();
              RequestDispatcher rd = request.getRequestDispatcher("uniwebpage.jsp");
              rd.forward(request, response);
            

    
        }
    }  
catch(Exception e){
    out.print(e);
}













%>

