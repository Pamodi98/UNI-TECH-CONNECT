<%-- 
    Document   : unichangepassprocess
    Created on : Jul 1, 2018, 7:45:26 PM
    Author     : wathm
--%>

<%@page import="login.LoginBean"%>
<%@page import="dbConnect.DbConnect"%>
<%@page import="passwordbean.ChangePassBean"%>
<%@page import="java.sql.*" %>
<% 
        try{
            
    ChangePassBean cpb = new ChangePassBean(request.getParameter("old"),request.getParameter("new"),request.getParameter("con"));
    String oldpass =cpb.getOldpass();
    String newpass=cpb.getNewpass();
    String conpass=cpb.getConpass();
    String user=(String)session.getAttribute("user");
    PreparedStatement pst,pst1;
    ResultSet rs;
    out.print(newpass+conpass+user+oldpass);
    Connection conn;
    conn=DbConnect.ConnectDb();
            
            
            
            String query="select pass from login where user=?";
            pst=conn.prepareStatement(query);
            pst.setString(1,user);
            
            rs=pst.executeQuery();
            
            if(rs.next() && (newpass == null ? conpass == null : newpass.equals(conpass))){
                out.print(rs.getString("pass"));
                String update="UPDATE login SET pass=? where user=? ";
                pst1=conn.prepareStatement(update);
                out.print(newpass);
                pst1.setString(1,newpass);
                pst1.setString(2,user);
                pst1.executeUpdate();
                
               
            }else{
               
            }
            
        }catch(Exception e){
            out.print(e);
        }
        
  
     
   
   
   


%>