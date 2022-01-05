 
 
<%@ page import="java.sql.*" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/testmain_project?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
PreparedStatement ps = null;
%>

    ID <%= session.getAttribute( "theId" ) %> 

<% 
  

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "UPDATE tbl_register set approve='1' where id='"+ session.getAttribute( "theId" )+"' ";
out.print(query);

ps = connection.prepareStatement(query);
int i = ps.executeUpdate();

response.sendRedirect("list_advocate.jsp");


   
 %>
