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

String query = "UPDATE tbl_clientappointment set status='approve',appstatus='1' where client_id='"+request.getParameter( "client_id" )+"' and  advocate_id='"+session.getAttribute( "theName3" )+"' ";
//out.print(query);

ps = connection.prepareStatement(query);
int i = ps.executeUpdate();
   
response.sendRedirect("appointment_request.jsp?status=success1");
    out.println("<script type=\"text/javascript\">");
    out.println("alert('your appointment is approve');");
    out.println("location='appointment_request.jsp';");
    out.println("</script>");
         

   
 %>
