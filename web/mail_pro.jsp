<%@ page import="java.util.*,javax.mail.*"%>

<%@ page import="javax.mail.internet.*" %>

 <%@ page import="java.sql.*" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/testmain_project?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>


<%

    //Creating a result for getting status that messsage is delivered or not!

    String result;

    // Get recipient's email-ID, message & subject-line from index.html page

    final String to = request.getParameter("email");

    final String subject = "your forget password";
    
    
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/testmain_project","root","");
Statement st=con.createStatement();
String email=request.getParameter("email");
String strQuery = "SELECT * FROM tbl_register where email='"+email+"'";
rs = st.executeQuery(strQuery);
if(rs.next())
{  
      String messg = rs.getString("password").toString();
    messg=messg+" is your password";


    // Sender's email ID and password needs to be mentioned

    final String from = "parthiv46patel@gmail.com";

    final String pass = "patel539";

 

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

        message.setSubject(subject);

        // Now set the actual message

        message.setText(messg);

        // Send message

        Transport.send(message);

        result = "Your mail sent successfully....";

    } catch (MessagingException mex) {

        mex.printStackTrace();

        result = "Error: unable to send mail....";

    }
    out.print(result);
}

        
%>
<a href="/final_project/homepage/index4.jsp" >Home Page</a>
