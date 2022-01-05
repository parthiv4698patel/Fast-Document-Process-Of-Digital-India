<%-- 
    Document   : detail_advocate
    Created on : Dec 7, 2018, 10:51:51 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="top.jsp" %>


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>table</title>
    </head>
    
        


<%@ page import="java.sql.*" %>
<%
String connectionURL = "jdbc:mysql://localhost:3306/testmain_project?user=root&pasword='' ";
Connection connection = null;
Statement statement = null;
ResultSet rs = null;
%>

<% 
    
Class.forName("com.mysql.jdbc.Driver").newInstance ();
connection = DriverManager.getConnection(connectionURL);
statement = connection.createStatement();
%>  

 <html>
<body>
    <div class="table-agile-info">
 <div class="panel panel-default">
    <div class="panel-heading">
        List Of Client
    </div>
    <div>
      
     <table class="table" ui-jq="footable" ui-options='{
        "paging": {
          "enabled": true
        },
        "filtering": {
          "enabled": true
        },
        "sorting": {
          "enabled": true
        }}'>
        <thead>
 
  <tr>
  
    <th>Name</th>
    <th>Email</th>
    <th>Mobile Number</th>
    <th>Pincode</th>
  </tr>
  
    </thead>
     <tbody>
 
  
   <%
String query = "select * from tbl_register  WHERE type='client'";
rs=statement.executeQuery(query);
while(rs.next())
{
    %>
      <tr >
   
    <td><%=rs.getString("username").toString() %></td>
      <td><%=rs.getString("email").toString() %></td> 
      <td><%=rs.getString("phone_number").toString() %></td> 
      <td><%=rs.getString("pincode").toString() %></td> 
    </tr>
    <%
    
}
%>

 </tbody>
</table> 
    </div>  




 
<%@include file="bottom.jsp" %>