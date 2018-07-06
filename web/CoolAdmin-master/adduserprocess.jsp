<%-- 
    Document   : adduserprocess
    Created on : Jul 5, 2018, 10:14:38 AM
    Author     : wathm
--%>

<%@page import="dbConnect.DbConnect"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<% 

 PreparedStatement pst;
 String user = request.getParameter("user");
  String pass = request.getParameter("pass");
   String type = request.getParameter("type");
   out.print(type);
    
    
try{
    Connection conn=DbConnect.ConnectDb();
    String query="insert into login (user,pass,type) values(?,?,?)";
    
              pst=conn.prepareStatement(query);
              pst.setString(1,user);
              pst.setString(2,pass);
              pst.setString(3,type);
              
              pst.executeUpdate();
             
RequestDispatcher rd=request.getRequestDispatcher("admin-index.jsp");
rd.forward(request, response);
              

    
}catch(Exception e){
    out.print(e);
} 

    








%>