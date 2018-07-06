<%-- 
    Document   : unichangepassprocess
    Created on : Jul 1, 2018, 7:45:26 PM
    Author     : wathm
--%>

<%@page import="dbConnect.DbConnect"%>
<%@page import="passwordbean.ChangePassBean"%>
<%@page import="java.sql.*" %>
<% 


try{
    
    ChangePassBean cpb = new ChangePassBean(request.getParameter("old"),request.getParameter("new"),request.getParameter("con"));
    String oldpass =cpb.getOldpass();
    String newpass=cpb.getNewpass();
    String conpass=cpb.getConpass();
    PreparedStatement pst;
    ResultSet rs;
 
   
   
    Connection conn = DbConnect.ConnectDb();
            String query="select pass,user from login where pass=?";
            pst=conn.prepareStatement(query);
            pst.setString(1,oldpass);
            rs=pst.executeQuery();
            if(rs.next() && (newpass == null ? conpass == null : newpass.equals(conpass))){
                String update="UPDATE login SET pass=? where UserName=? ";
                pst=conn.prepareStatement(update);
                pst.setString(1,npass);
                pst.setString(2,uname);
                pst.executeUpdate();
                JOptionPane.showMessageDialog(null,"password changed succesfully");
               
            }else{
                JOptionPane.showMessageDialog(null,"your username or entered passwords are incorrect \n please try again");
            }
            
        }catch(Exception e){
            System.out.println("error:"+e);
        }




%>