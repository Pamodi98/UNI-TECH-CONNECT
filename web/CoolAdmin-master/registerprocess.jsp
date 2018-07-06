<%-- 
    Document   : registerprocess.jsp
    Created on : Jun 30, 2018, 8:28:20 PM
    Author     : wathm
--%>

<%@page import="dbConnect.DbConnect"%>
<%@page import="java.sql.*"%>
<%@page import="regsiterbean.RegisterBean"%>
<% 
    
RegisterBean rb = new RegisterBean(request.getParameter("fname"),request.getParameter("email"),request.getParameter("contact"),request.getParameter("des"),request.getParameter("user"));
String fullname=rb.getFullname();
String email=rb.getEmail();
String contact = rb.getContact();
String reason= rb.getReason();
String type=rb.getType();

PreparedStatement pst;
try{
    Connection conn=DbConnect.ConnectDb();
    String query="insert into requests (fname,email,phoneno,type,description) values(?,?,?,?,?)";
    
              pst=conn.prepareStatement(query);
              pst.setString(1,fullname);
              pst.setString(2,email);
              pst.setString(3,contact);
              pst.setString(4,type);
              pst.setString(5,reason);
              pst.executeUpdate();
            
                 
    %>
    
    <% 
    RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
    rd.forward(request, response);
    %>

<%
}catch(Exception e){
    out.print(e);
}

%>










