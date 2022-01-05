<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%@ page import="java.sql.*" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/testmain_project?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>

<%
  
    String user_id=request.getParameter("user_id");
    //String image_name=request.getParameter("image_name");
    //String type=request.getParameter("type");
    
     String type="aadharcard";
    
 

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
String query1 = "delete from tbl_ndoc where user_id='"+session.getAttribute( "theName3" )+"' and type='aadharcard' ";
out.print(query1);
statement.executeUpdate(query1);
response.sendRedirect("notary_document1.jsp");
statement.close();
connection.close();

   
%>





