<%-- 
    Document   : sendmailprocess
    Created on : Jul 1, 2018, 1:35:46 PM
    Author     : wathm
--%>

<%@page import="dbConnect.DbConnect"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>
<html>
    <body>
<%

    // adding to the login table
    
    
    
    
    
    
    
    //Creating a result for getting status that messsage is delivered or not!

    String result;

    // Get recipient's email-ID, message & subject-line from index.html page

    final String to = request.getParameter("email");

    final String user = request.getParameter("user");

    final String passw = request.getParameter("pass");
    
    //save to login
    PreparedStatement pst;
try{
    Connection conn=DbConnect.ConnectDb();
    String query="insert into login (user,pass) values(?,?)";
    
              pst=conn.prepareStatement(query);
              pst.setString(1,user);
              pst.setString(2,passw);
              
              pst.executeUpdate();
             
                 
              

    
}catch(Exception e){
    out.print(e);
}

    

 

    // Sender's email ID and password needs to be mentioned

    final String from = "unitechconnect18@gmail.com";

    final String pass = "unitech123";

 

    // Defining the gmail host

    String host = "smtp.gmail.com";

 

    // Creating Properties object

    Properties props = new Properties();

 

    // Defining properties

    props.put("mail.smtp.host", host);

    props.put("mail.transport.protocol", "smtp");

    props.put("mail.smtp.auth", "true");

    props.put("mail.smtp.starttls.enable", "true");

    props.put("mail.user", from);

    props.put("mail.password", pass);

    props.put("mail.port", "465");

 

    // Authorized the Session object.

    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {

        @Override

        protected PasswordAuthentication getPasswordAuthentication() {

            return new PasswordAuthentication(from, pass);

        }

    });

 

    try {

        // Create a default MimeMessage object.

        MimeMessage message = new MimeMessage(mailSession);

        // Set From: header field of the header.

        message.setFrom(new InternetAddress(from));

        // Set To: header field of the header.

        message.addRecipient(Message.RecipientType.TO,

                new InternetAddress(to));

        // Set Subject: header field

        message.setSubject("here is your username and password");

        // Now set the actual message

        message.setText("username:"+user+ " password:" +passw);

        // Send message

        Transport.send(message);

        result = "Your mail sent successfully....";

    } catch (MessagingException mex) {

        mex.printStackTrace();

        result = "Error: unable to send mail....";

    }

%>


<h1><center><font color="blue">Sending Mail Using JSP</font></center></h1>


<b><center><font color="red"><% out.println(result);%></center></b>

        </body>
        
        
        </html>