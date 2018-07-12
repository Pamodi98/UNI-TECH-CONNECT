<%-- 
    Document   : unicalanderprocess
    Created on : Jun 28, 2018, 2:32:58 PM
    Author     : wathm
--%>

<%@page import="calanderbeanss.UniCalanderBean"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="dbConnect.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    UniCalanderBean ucb = new UniCalanderBean(request.getParameter("title"),request.getParameter("date"),request.getParameter("des"));
String eventtitle = ucb.getTitle();
String date = ucb.getDate();
String description = ucb.getDescription();
String user=(String)session.getAttribute("user");
 


  PreparedStatement pst;
 try{
              
              Connection conn = DbConnect.ConnectDb();
              String query = "INSERT INTO unicalander (title,date,description,user) VALUES(?,?,?,?)";
              pst=conn.prepareStatement(query);
              pst.setString(1,eventtitle);
              pst.setString(2,date);
              pst.setString(3,description);
              pst.setString(4,user);
              
              
              pst.executeUpdate();
            

               RequestDispatcher rd=request.getRequestDispatcher("uni-calander.jsp");  
        rd.forward(request, response); 
                 
              
              
         }catch(SQLException ex){
             out.print(ex);
         }



%>
