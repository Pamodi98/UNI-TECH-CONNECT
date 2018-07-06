<%-- 
    Document   : deleterequest
    Created on : Jul 5, 2018, 1:33:20 PM
    Author     : wathm
--%>

<%@page import="dbConnect.DbConnect"%>
<%@page import="java.sql.*"%>
<%
 String id = request.getParameter("id");
 out.print(id);
 try{
     Connection conn = DbConnect.ConnectDb();
     PreparedStatement pst;
     String query= "delete from requests where id=?";
    pst=conn.prepareStatement(query);
    pst.setString(1,id);
    pst.executeUpdate();
    
    
    
        RequestDispatcher rd=request.getRequestDispatcher("admin-index.jsp");  
        rd.forward(request, response); 
                 

     
     
     
     
 }catch(Exception e){
     out.print(e);
 }


%>
