<%-- 
    Document   : techcalanderprocess
    Created on : Jun 30, 2018, 1:58:06 PM
    Author     : wathm
--%>

<%@page import="calanderbeanss.TechCalanderBean"%>
<%@page import="java.sql.SQLException"%>
<%@page import="dbConnect.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    TechCalanderBean tcb = new TechCalanderBean(request.getParameter("title"),request.getParameter("date"),request.getParameter("des"));
String eventtitle = tcb.getTitle();
String date = tcb.getDate();
String description = tcb.getDescription();


  PreparedStatement pst;
 try{
              
              Connection conn = DbConnect.ConnectDb();
              String query = "INSERT INTO techcalander (title,date,description) VALUES(?,?,?)";
              pst=conn.prepareStatement(query);
              pst.setString(1,eventtitle);
              pst.setString(2,date);
              pst.setString(3,description);
              
              
              pst.executeUpdate();
            

                RequestDispatcher rd = request.getRequestDispatcher("tech-calander.jsp");
                rd.forward(request, response);
                 
              
              
         }catch(SQLException ex){
             out.print(ex);
         }



%>