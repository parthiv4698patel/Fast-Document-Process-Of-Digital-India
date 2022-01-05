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
  String Name=request.getParameter("first_name");
  
  
  String Phone_no=request.getParameter("ph_no");
  
  String Address=request.getParameter("address");
  
  String Pincode=request.getParameter("pin_code");
 
  

Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();

String query = "UPDATE tbl_register set username=?,phone_number=?,address=?,pincode=? where id='"+session.getAttribute( "theName3" ) +"' ";
out.print(query);
ps = connection.prepareStatement(query);
ps.setString(1,Name);
ps.setString(2,Phone_no);
ps.setString(3,Address );
ps.setString(4,Pincode);
int i = ps.executeUpdate();

response.sendRedirect("/final_project/admin/index.jsp");


   
 %>
