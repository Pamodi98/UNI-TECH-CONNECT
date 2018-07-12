<%-- 
    Document   : logout
    Created on : Jul 11, 2018, 9:27:19 PM
    Author     : wathm
--%>
<%
session.invalidate();
 response.sendRedirect("login.jsp");    %>

