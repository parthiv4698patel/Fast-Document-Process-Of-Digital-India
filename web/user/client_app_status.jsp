<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="top2.jsp" %>


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
     pending List Of Your Appointment
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
  
    <th>advocate_Id</th>
     <th>Date</th>
    <th>Time</th>
    <th>Status</th>
    
     </tr>
     </thead>
     <tbody>
     
     <%
String query = "select * from tbl_clientappointment  WHERE  client_id='"+session.getAttribute( "theName3" )+"' and status='pending' ";
 //out.print(query);
  
rs=statement.executeQuery(query);
while(rs.next())
{
    %>
     
      <tr>
    
    <td><%=rs.getString("advocate_id").toString() %></td>
      <td><%=rs.getString("date").toString() %></td> 
      <td><%=rs.getTime("time").toString() %></td> 
      <td><%=rs.getString("status").toString() %></td> 
          
    </tr>
    <%
    
}
%>

 </tbody>
</table> 
    </div>
  
       <br> <br>

<div class="panel panel-default">
    <div class="panel-heading">
   Approved List Of Your Appointment
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
  
    <th>advocate_Id</th>
  
     <th>Date</th>
    <th>Time</th>
    <th>Status</th>
 
  </tr>
   </thead>
     <tbody>
  
  <%
String query2 =  "select * from tbl_clientappointment  WHERE  client_id='"+session.getAttribute( "theName3" )+"' and status='approve' or status='reject' ";
rs=statement.executeQuery(query2);
while(rs.next())
{
    %>
  
      <tr >
    
    <td><%=rs.getString("advocate_id").toString() %></td>
      <td><%=rs.getString("date").toString() %></td> 
      <td><%=rs.getTime("time").toString() %></td> 
      <td><%=rs.getString("status").toString() %></td> 
         
      
                
    </tr>
     <%
    
}
%>

 </tbody>
</table> 
    </div>
        </body>
 
       </html>    
       
    <center>
        <p><font style="color:red" >Important note : </font><font style="color:black" >If your appointment not show on this page then, you can take appointment again because your appointment is rejected </p>
    </center>
       
       

 <%@include file="bottom2.jsp" %>