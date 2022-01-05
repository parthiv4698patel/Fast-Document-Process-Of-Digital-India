<%@ page import="java.sql.*" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/testmain_project?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
PreparedStatement ps = null;
%>

<%   

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "UPDATE tbl_clientappointment set status='reject',appstatus='0' where client_id='"+request.getParameter( "client_id" )+"' and  advocate_id='"+session.getAttribute( "theName3" )+"' ";
//out.print(query);

ps = connection.prepareStatement(query);
int i = ps.executeUpdate();

String query1 = "delete  from tbl_clientappointment where status='reject'and appstatus='0' and client_id='"+request.getParameter( "client_id" )+"' and  advocate_id='"+session.getAttribute( "theName3" )+"'  ";
out.print(query1);
statement.executeUpdate(query1);

response.sendRedirect("appointment_request.jsp?status=reject");



   
 %>
