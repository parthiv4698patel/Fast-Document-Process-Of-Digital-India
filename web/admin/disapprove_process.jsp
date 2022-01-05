<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ page import="java.sql.*" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/testmain_project?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
PreparedStatement ps = null;
%>

<%

    String Disapprove=request.getParameter("disapprove");
    
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "UPDATE tbl_register set disapprove=? where id='"+ session.getAttribute( "theId" )+"' and type='advocate' ";

out.print(query);
ps = connection.prepareStatement(query);
ps.setString(1,Disapprove);
int i = ps.executeUpdate();

response.sendRedirect("list_advocate.jsp");

  
 %>
