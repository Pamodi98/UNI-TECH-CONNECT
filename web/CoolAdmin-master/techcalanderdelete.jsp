<%-- 
    Document   : techcalanderdelete
    Created on : Jun 30, 2018, 10:24:10 PM
    Author     : wathm
--%>

<%@page import="dbConnect.DbConnect"%>
<%@page import="java.sql.*"%>
<%
 String id = request.getParameter("id");
 try{
     Connection conn = DbConnect.ConnectDb();
     PreparedStatement pst;
     String query= "delete from techcalander where title=?";
    pst=conn.prepareStatement(query);
    pst.setString(1,id);
    pst.executeUpdate();
         RequestDispatcher rd=request.getRequestDispatcher("tech-calander.jsp");  
        rd.forward(request, response); 
                 

     
     
     
     
 }catch(Exception e){
     out.print(e);
 }


%>