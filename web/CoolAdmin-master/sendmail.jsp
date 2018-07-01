<%-- 
    Document   : sendmail
    Created on : Jul 1, 2018, 12:07:57 AM
    Author     : wathm
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="${pageContext.request.contextPath}/SendMail" method="post" >
            <table border="1">
                <% 
                String email = request.getParameter("id");
                out.print(email);
                
                
                %>
               
                <tbody>
                    <tr>
                        <td>email</td>
                        <td><input type="text" name="email" value="<%= email %>" /></td>
                    </tr>
                    <tr>
                        <td>username</td>
                        <td><input type="text" name="user" value="" /></td>
                    </tr>
                    <tr>
                        <td>password</td>
                        <td><input type="text" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="send" /></td>
                        <td><input type="submit" value="cancel" /></td>
                    </tr>
                    
                </tbody>
            </table>

            
        </form>
    </body>
</html>
