<%-- 
    Document   : unicalanderdelete
    Created on : Jun 30, 2018, 7:59:51 PM
    Author     : wathm
--%>

<%@page import="dbConnect.DbConnect"%>
<%@page import="java.sql.*"%>
<%
 String id = request.getParameter("id");
 try{
     Connection conn = DbConnect.ConnectDb();
     PreparedStatement pst;
     String query= "delete from unicalander where title=?";
    pst=conn.prepareStatement(query);
    pst.setString(1,id);
    pst.executeUpdate();
         RequestDispatcher rd=request.getRequestDispatcher("uni-calander.jsp");  
        rd.forward(request, response); 
                 

     
     
     
     
 }catch(Exception e){
     out.print(e);
 }


%>
